function Add-VSQuickSightDataSetProjectOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.ProjectOperation resource property to the template. A transform operation that projects columns. Operations that come after a projection can only refer to projected columns.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.ProjectOperation resource property to the template.
A transform operation that projects columns. Operations that come after a projection can only refer to projected columns.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-projectoperation.html

    .PARAMETER ProjectedColumns
        Projected columns.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-projectoperation.html#cfn-quicksight-dataset-projectoperation-projectedcolumns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.ProjectOperation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ProjectedColumns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.ProjectOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
