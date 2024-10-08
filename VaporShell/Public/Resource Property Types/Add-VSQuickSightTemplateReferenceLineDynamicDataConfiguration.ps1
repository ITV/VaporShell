function Add-VSQuickSightTemplateReferenceLineDynamicDataConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.ReferenceLineDynamicDataConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.ReferenceLineDynamicDataConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedynamicdataconfiguration.html

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedynamicdataconfiguration.html#cfn-quicksight-template-referencelinedynamicdataconfiguration-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER MeasureAggregationFunction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedynamicdataconfiguration.html#cfn-quicksight-template-referencelinedynamicdataconfiguration-measureaggregationfunction
        UpdateType: Mutable
        Type: AggregationFunction

    .PARAMETER Calculation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedynamicdataconfiguration.html#cfn-quicksight-template-referencelinedynamicdataconfiguration-calculation
        UpdateType: Mutable
        Type: NumericalAggregationFunction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.ReferenceLineDynamicDataConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Column,

        [Parameter(Mandatory = $false)]
        $MeasureAggregationFunction,

        [Parameter(Mandatory = $true)]
        $Calculation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.ReferenceLineDynamicDataConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
