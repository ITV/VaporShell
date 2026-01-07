function Add-VSDataZoneEnvironmentBlueprintConfigurationLakeFormationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::EnvironmentBlueprintConfiguration.LakeFormationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::EnvironmentBlueprintConfiguration.LakeFormationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-lakeformationconfiguration.html

    .PARAMETER LocationRegistrationExcludeS3Locations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-lakeformationconfiguration.html#cfn-datazone-environmentblueprintconfiguration-lakeformationconfiguration-locationregistrationexcludes3locations
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER LocationRegistrationRole
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-environmentblueprintconfiguration-lakeformationconfiguration.html#cfn-datazone-environmentblueprintconfiguration-lakeformationconfiguration-locationregistrationrole
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.EnvironmentBlueprintConfiguration.LakeFormationConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LocationRegistrationExcludeS3Locations,

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
        $LocationRegistrationRole

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.EnvironmentBlueprintConfiguration.LakeFormationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
