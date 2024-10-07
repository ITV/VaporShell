function Add-VSQuickSightTemplateTooltipItem {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TooltipItem resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TooltipItem resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tooltipitem.html

    .PARAMETER FieldTooltipItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tooltipitem.html#cfn-quicksight-template-tooltipitem-fieldtooltipitem
        UpdateType: Mutable
        Type: FieldTooltipItem

    .PARAMETER ColumnTooltipItem
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tooltipitem.html#cfn-quicksight-template-tooltipitem-columntooltipitem
        UpdateType: Mutable
        Type: ColumnTooltipItem

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.TooltipItem')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FieldTooltipItem,
        [parameter(Mandatory = $false)]
        $ColumnTooltipItem
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TooltipItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
