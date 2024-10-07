function Add-VSQuickSightTemplateGaugeChartConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.GaugeChartConditionalFormattingOption resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.GaugeChartConditionalFormattingOption resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartconditionalformattingoption.html

    .PARAMETER Arc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartconditionalformattingoption.html#cfn-quicksight-template-gaugechartconditionalformattingoption-arc
        UpdateType: Mutable
        Type: GaugeChartArcConditionalFormatting

    .PARAMETER PrimaryValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-gaugechartconditionalformattingoption.html#cfn-quicksight-template-gaugechartconditionalformattingoption-primaryvalue
        UpdateType: Mutable
        Type: GaugeChartPrimaryValueConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.GaugeChartConditionalFormattingOption')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Arc,
        [parameter(Mandatory = $false)]
        $PrimaryValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.GaugeChartConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
