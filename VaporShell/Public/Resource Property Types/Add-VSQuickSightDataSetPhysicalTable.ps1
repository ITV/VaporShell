function Add-VSQuickSightDataSetPhysicalTable {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.PhysicalTable resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.PhysicalTable resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html

    .PARAMETER RelationalTable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html#cfn-quicksight-dataset-physicaltable-relationaltable
        UpdateType: Mutable
        Type: RelationalTable

    .PARAMETER CustomSql
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html#cfn-quicksight-dataset-physicaltable-customsql
        UpdateType: Mutable
        Type: CustomSql

    .PARAMETER S3Source
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-physicaltable.html#cfn-quicksight-dataset-physicaltable-s3source
        UpdateType: Mutable
        Type: S3Source

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSet.PhysicalTable')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RelationalTable,
        [parameter(Mandatory = $false)]
        $CustomSql,
        [parameter(Mandatory = $false)]
        $S3Source
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.PhysicalTable'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
