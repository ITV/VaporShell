function Add-VSQuickSightDataSetDecimalDatasetParameterDefaultValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DecimalDatasetParameterDefaultValues resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DecimalDatasetParameterDefaultValues resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-decimaldatasetparameterdefaultvalues.html

    .PARAMETER StaticValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-decimaldatasetparameterdefaultvalues.html#cfn-quicksight-dataset-decimaldatasetparameterdefaultvalues-staticvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Double
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DecimalDatasetParameterDefaultValues')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StaticValues
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DecimalDatasetParameterDefaultValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
