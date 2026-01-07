function Add-VSInspectorV2CodeSecurityScanConfigurationContinuousIntegrationScanConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::CodeSecurityScanConfiguration.ContinuousIntegrationScanConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::InspectorV2::CodeSecurityScanConfiguration.ContinuousIntegrationScanConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-continuousintegrationscanconfiguration.html

    .PARAMETER supportedEvents
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityscanconfiguration-continuousintegrationscanconfiguration.html#cfn-inspectorv2-codesecurityscanconfiguration-continuousintegrationscanconfiguration-supportedevents
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.InspectorV2.CodeSecurityScanConfiguration.ContinuousIntegrationScanConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $supportedEvents

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.CodeSecurityScanConfiguration.ContinuousIntegrationScanConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
