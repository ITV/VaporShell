function Add-VSQuickSightAnalysisTableFieldURLConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TableFieldURLConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TableFieldURLConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldurlconfiguration.html

    .PARAMETER LinkConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldurlconfiguration.html#cfn-quicksight-analysis-tablefieldurlconfiguration-linkconfiguration
        UpdateType: Mutable
        Type: TableFieldLinkConfiguration

    .PARAMETER ImageConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldurlconfiguration.html#cfn-quicksight-analysis-tablefieldurlconfiguration-imageconfiguration
        UpdateType: Mutable
        Type: TableFieldImageConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TableFieldURLConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LinkConfiguration,

        [Parameter(Mandatory = $false)]
        $ImageConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TableFieldURLConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
