function Add-VSMediaConnectRouterInputSrtCallerRouterInputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterInput.SrtCallerRouterInputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterInput.SrtCallerRouterInputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-srtcallerrouterinputconfiguration.html

    .PARAMETER SourceAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-srtcallerrouterinputconfiguration.html#cfn-mediaconnect-routerinput-srtcallerrouterinputconfiguration-sourceaddress
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER StreamId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-srtcallerrouterinputconfiguration.html#cfn-mediaconnect-routerinput-srtcallerrouterinputconfiguration-streamid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DecryptionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-srtcallerrouterinputconfiguration.html#cfn-mediaconnect-routerinput-srtcallerrouterinputconfiguration-decryptionconfiguration
        UpdateType: Mutable
        Type: SrtDecryptionConfiguration

    .PARAMETER SourcePort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-srtcallerrouterinputconfiguration.html#cfn-mediaconnect-routerinput-srtcallerrouterinputconfiguration-sourceport
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MinimumLatencyMilliseconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-srtcallerrouterinputconfiguration.html#cfn-mediaconnect-routerinput-srtcallerrouterinputconfiguration-minimumlatencymilliseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterInput.SrtCallerRouterInputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SourceAddress,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StreamId,

        [Parameter(Mandatory = $false)]
        $DecryptionConfiguration,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SourcePort,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MinimumLatencyMilliseconds

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterInput.SrtCallerRouterInputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
