function Add-VSDataZoneEnvironmentBlueprintConfigurationProvisioningConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::EnvironmentBlueprintConfiguration.ProvisioningConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::EnvironmentBlueprintConfiguration.ProvisioningConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-provisioningconfiguration.html

    .PARAMETER LakeFormationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-provisioningconfiguration.html#cfn-datazone-environmentblueprintconfiguration-provisioningconfiguration-lakeformationconfiguration
        UpdateType: Mutable
        Type: LakeFormationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.EnvironmentBlueprintConfiguration.ProvisioningConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LakeFormationConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.EnvironmentBlueprintConfiguration.ProvisioningConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
