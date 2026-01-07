function Add-VSInspectorV2CodeSecurityScanConfigurationCodeSecurityScanConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::CodeSecurityScanConfiguration.CodeSecurityScanConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::InspectorV2::CodeSecurityScanConfiguration.CodeSecurityScanConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html

    .PARAMETER continuousIntegrationScanConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration-continuousintegrationscanconfiguration
        UpdateType: Mutable
        Type: ContinuousIntegrationScanConfiguration

    .PARAMETER periodicScanConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration-periodicscanconfiguration
        UpdateType: Mutable
        Type: PeriodicScanConfiguration

    .PARAMETER ruleSetCategories
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-codesecurityscanconfiguration-rulesetcategories
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.InspectorV2.CodeSecurityScanConfiguration.CodeSecurityScanConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $continuousIntegrationScanConfiguration,

        [Parameter(Mandatory = $false)]
        $periodicScanConfiguration,

        [Parameter(Mandatory = $true)]
        $ruleSetCategories

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.CodeSecurityScanConfiguration.CodeSecurityScanConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
