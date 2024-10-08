function Add-VSQuickSightDataSetDateTimeDatasetParameterDefaultValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DateTimeDatasetParameterDefaultValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DateTimeDatasetParameterDefaultValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameterdefaultvalues.html

    .PARAMETER StaticValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameterdefaultvalues.html#cfn-quicksight-dataset-datetimedatasetparameterdefaultvalues-staticvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DateTimeDatasetParameterDefaultValues')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DateTimeDatasetParameterDefaultValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
