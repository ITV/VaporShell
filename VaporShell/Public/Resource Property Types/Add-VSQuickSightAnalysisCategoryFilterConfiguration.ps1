function Add-VSQuickSightAnalysisCategoryFilterConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.CategoryFilterConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.CategoryFilterConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilterconfiguration.html

    .PARAMETER CustomFilterListConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilterconfiguration.html#cfn-quicksight-analysis-categoryfilterconfiguration-customfilterlistconfiguration
        UpdateType: Mutable
        Type: CustomFilterListConfiguration

    .PARAMETER CustomFilterConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilterconfiguration.html#cfn-quicksight-analysis-categoryfilterconfiguration-customfilterconfiguration
        UpdateType: Mutable
        Type: CustomFilterConfiguration

    .PARAMETER FilterListConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-categoryfilterconfiguration.html#cfn-quicksight-analysis-categoryfilterconfiguration-filterlistconfiguration
        UpdateType: Mutable
        Type: FilterListConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.CategoryFilterConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomFilterListConfiguration,
        [parameter(Mandatory = $false)]
        $CustomFilterConfiguration,
        [parameter(Mandatory = $false)]
        $FilterListConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.CategoryFilterConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
