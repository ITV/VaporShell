function Add-VSQuickSightDataSetIncrementalRefresh {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.IncrementalRefresh resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.IncrementalRefresh resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-incrementalrefresh.html

    .PARAMETER LookbackWindow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-incrementalrefresh.html#cfn-quicksight-dataset-incrementalrefresh-lookbackwindow
        UpdateType: Mutable
        Type: LookbackWindow

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.IncrementalRefresh')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LookbackWindow

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.IncrementalRefresh'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
