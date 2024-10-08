function Add-VSQuickSightDataSetDatasetParameter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DatasetParameter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DatasetParameter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetparameter.html

    .PARAMETER IntegerDatasetParameter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetparameter.html#cfn-quicksight-dataset-datasetparameter-integerdatasetparameter
        UpdateType: Mutable
        Type: IntegerDatasetParameter

    .PARAMETER DateTimeDatasetParameter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetparameter.html#cfn-quicksight-dataset-datasetparameter-datetimedatasetparameter
        UpdateType: Mutable
        Type: DateTimeDatasetParameter

    .PARAMETER DecimalDatasetParameter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetparameter.html#cfn-quicksight-dataset-datasetparameter-decimaldatasetparameter
        UpdateType: Mutable
        Type: DecimalDatasetParameter

    .PARAMETER StringDatasetParameter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetparameter.html#cfn-quicksight-dataset-datasetparameter-stringdatasetparameter
        UpdateType: Mutable
        Type: StringDatasetParameter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DatasetParameter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $IntegerDatasetParameter,
        [parameter(Mandatory = $false)]
        $DateTimeDatasetParameter,
        [parameter(Mandatory = $false)]
        $DecimalDatasetParameter,
        [parameter(Mandatory = $false)]
        $StringDatasetParameter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DatasetParameter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
