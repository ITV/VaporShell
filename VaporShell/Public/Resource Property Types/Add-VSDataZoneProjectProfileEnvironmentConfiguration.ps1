function Add-VSDataZoneProjectProfileEnvironmentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::ProjectProfile.EnvironmentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::ProjectProfile.EnvironmentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html

    .PARAMETER Description
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-description
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER EnvironmentConfigurationId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-environmentconfigurationid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AwsRegion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-awsregion
        UpdateType: Mutable
        Type: Region

    .PARAMETER AwsAccount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-awsaccount
        UpdateType: Mutable
        Type: AwsAccount

    .PARAMETER DeploymentMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-deploymentmode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER EnvironmentBlueprintId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-environmentblueprintid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ConfigurationParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-configurationparameters
        UpdateType: Mutable
        Type: EnvironmentConfigurationParametersDetails

    .PARAMETER DeploymentOrder
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-deploymentorder
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-projectprofile-environmentconfiguration.html#cfn-datazone-projectprofile-environmentconfiguration-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.ProjectProfile.EnvironmentConfiguration')]
    [CmdletBinding()]

    Param
    (
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
        $Description,

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
        $EnvironmentConfigurationId,

        [Parameter(Mandatory = $true)]
        $AwsRegion,

        [Parameter(Mandatory = $false)]
        $AwsAccount,

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
        $DeploymentMode,

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
        $EnvironmentBlueprintId,

        [Parameter(Mandatory = $false)]
        $ConfigurationParameters,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DeploymentOrder,

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
        $Name

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.ProjectProfile.EnvironmentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
