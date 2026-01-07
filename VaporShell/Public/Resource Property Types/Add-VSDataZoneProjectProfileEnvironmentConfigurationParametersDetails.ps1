function Add-VSDataZoneProjectProfileEnvironmentConfigurationParametersDetails {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::ProjectProfile.EnvironmentConfigurationParametersDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::ProjectProfile.EnvironmentConfigurationParametersDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html

    .PARAMETER ParameterOverrides
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html#cfn-datazone-projectprofile-environmentconfigurationparametersdetails-parameteroverrides
        UpdateType: Mutable
        Type: List
        ItemType: EnvironmentConfigurationParameter
        DuplicatesAllowed: True

    .PARAMETER ResolvedParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html#cfn-datazone-projectprofile-environmentconfigurationparametersdetails-resolvedparameters
        UpdateType: Mutable
        Type: List
        ItemType: EnvironmentConfigurationParameter
        DuplicatesAllowed: True

    .PARAMETER SsmPath
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfigurationparametersdetails.html#cfn-datazone-projectprofile-environmentconfigurationparametersdetails-ssmpath
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.ProjectProfile.EnvironmentConfigurationParametersDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DataZone.ProjectProfile.EnvironmentConfigurationParameter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ParameterOverrides,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DataZone.ProjectProfile.EnvironmentConfigurationParameter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResolvedParameters,

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
        $SsmPath

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.ProjectProfile.EnvironmentConfigurationParametersDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
