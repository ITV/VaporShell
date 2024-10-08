function Add-VSQuickSightTemplateCategoryInnerFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.CategoryInnerFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.CategoryInnerFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryinnerfilter.html

    .PARAMETER Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryinnerfilter.html#cfn-quicksight-template-categoryinnerfilter-configuration
        UpdateType: Mutable
        Type: CategoryFilterConfiguration

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryinnerfilter.html#cfn-quicksight-template-categoryinnerfilter-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER DefaultFilterControlConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-categoryinnerfilter.html#cfn-quicksight-template-categoryinnerfilter-defaultfiltercontrolconfiguration
        UpdateType: Mutable
        Type: DefaultFilterControlConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.CategoryInnerFilter')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Configuration,

        [Parameter(Mandatory = $true)]
        $Column,

        [Parameter(Mandatory = $false)]
        $DefaultFilterControlConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.CategoryInnerFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
