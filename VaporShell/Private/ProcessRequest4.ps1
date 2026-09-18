function ProcessRequest4 {
    <#
    .SYNOPSIS
    Receives AWS SDK requests and processes them using the AWS SDK for .NET.
    #>
    [cmdletbinding()]
    param
    (
        [parameter(Mandatory = $false, Position = 0)]
        [String]
        $ParameterSetName,
        [parameter(Mandatory = $false, Position = 1)]
        [String]
        $ProfileName = $env:AWS_PROFILE,
        [parameter(Mandatory = $true, Position = 2)]
        [String]
        $Method,
        [parameter(Mandatory = $true, Position = 3)]
        $Request,
        [parameter(Mandatory = $false, Position = 4)]
        [String]
        $Expand
    )
    process {
        if (!$ProfileName) {
            $ProfileName = 'default'
            $PSBoundParameters['ProfileName'] = 'default'
        }
        $results = @()
        try {
            $service = ($request.PSObject.TypeNames)[0].split('.')[1]

            # Use CredentialProfileStoreChain (modern replacement for StoredProfileAWSCredentials)
            $chain = New-Object Amazon.Runtime.CredentialManagement.CredentialProfileStoreChain -ErrorAction Stop
            $creds = $null
            $endPoint = $null

            if ($chain.TryGetAWSCredentials($ProfileName, [ref]$creds)) {
                # Successfully resolved credentials from profile
                $profile = $null
                if ($chain.TryGetProfile($ProfileName, [ref]$profile) -and $profile.Region) {
                    $endPoint = $profile.Region
                }
            } else {
                # Fall back to default credential resolution (env vars, instance profile, etc.)
                $creds = [Amazon.Runtime.FallbackCredentialsFactory]::GetCredentials()
            }

            # Resolve region if not found from profile
            if (-not $endPoint) {
                $endPoint = if ([Amazon.Runtime.FallbackRegionFactory]::GetRegionEndpoint()) {
                    [Amazon.Runtime.FallbackRegionFactory]::GetRegionEndpoint()
                } elseif ($env:AWS_REGION) {
                    [Amazon.RegionEndpoint]::GetBySystemName($env:AWS_REGION)
                } elseif ($env:AWS_DEFAULT_REGION) {
                    [Amazon.RegionEndpoint]::GetBySystemName($env:AWS_DEFAULT_REGION)
                } else {
                    Write-Warning 'Unable to resolve target region! Defaulting to eu-west-1.'
                    Write-Warning "Set the environment variable 'AWS_REGION' or use Set-VSCredential -ProfileName $ProfileName -Region <REGION>"
                    [Amazon.RegionEndpoint]::EUWest1
                }
            }

            Write-Verbose "Building '$service' client in region '$($endPoint.DisplayName)' [$($endPoint.SystemName)]"
            $client = New-Object "Amazon.$($service).Amazon$($service)Client" $creds, $endPoint -ErrorAction Stop
        } catch {
            return (New-VSError -String "$($_.Exception.Message)")
        }
        if ($client | Get-Member -MemberType Method -Name "$Method*" | Where-Object { $_.Name -eq "$($Method)Async" }) {
            $useAsync = $true
            Write-Verbose "Processing async request:`n$($PSBoundParameters | Format-Table -AutoSize | Out-String)"
        } else {
            $useAsync = $false
            Write-Verbose "Processing request:`n$($PSBoundParameters | Format-Table -AutoSize | Out-String)"
        }
        $i = 0
        do {
            $i++
            if ($useAsync) {
                $result = $client."$($Method)Async"($Request)
                if ($Expand) {
                    $results += $result.Result.$Expand
                } else {
                    $results += $result.Result
                }
            } else {
                $result = $client.$Method($Request)
                if ($Expand) {
                    $results += $result.$Expand
                } else {
                    $results += $result
                }
            }
            if ($result.Result.NextToken -and !$request.MaxResults) {
                $Request.NextToken = $result.Result.NextToken
                $done = $false
            } elseif ($result.NextToken -and !$request.MaxResults) {
                $Request.NextToken = $result.NextToken
                $done = $false
            } else {
                $done = $true
            }
        }
        until ($done)
        if (!$result) {
            return
        }
        if ($results) {
            return $results
        } elseif ($result.Result) {
            return $result.Result
        } elseif ($result.Exception) {
            return (New-VSError $result)
        } else {
            return $result
        }
    }
}
