function Add-VSQuickSightDataSetDataPrepAggregationFunction {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataPrepAggregationFunction resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataPrepAggregationFunction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-dataprepaggregationfunction.html

    .PARAMETER PercentileAggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-dataprepaggregationfunction.html#cfn-quicksight-dataset-dataprepaggregationfunction-percentileaggregation
        UpdateType: Mutable
        Type: DataPrepPercentileAggregationFunction

    .PARAMETER SimpleAggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-dataprepaggregationfunction.html#cfn-quicksight-dataset-dataprepaggregationfunction-simpleaggregation
        UpdateType: Mutable
        Type: DataPrepSimpleAggregationFunction

    .PARAMETER ListAggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-dataprepaggregationfunction.html#cfn-quicksight-dataset-dataprepaggregationfunction-listaggregation
        UpdateType: Mutable
        Type: DataPrepListAggregationFunction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataPrepAggregationFunction')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PercentileAggregation,

        [Parameter(Mandatory = $false)]
        $SimpleAggregation,

        [Parameter(Mandatory = $false)]
        $ListAggregation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataPrepAggregationFunction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
