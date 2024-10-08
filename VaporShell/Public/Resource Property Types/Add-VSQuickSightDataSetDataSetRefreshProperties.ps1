function Add-VSQuickSightDataSetDataSetRefreshProperties {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.DataSetRefreshProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.DataSetRefreshProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetrefreshproperties.html

    .PARAMETER RefreshConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetrefreshproperties.html#cfn-quicksight-dataset-datasetrefreshproperties-refreshconfiguration
        UpdateType: Mutable
        Type: RefreshConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.DataSetRefreshProperties')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RefreshConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.DataSetRefreshProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
