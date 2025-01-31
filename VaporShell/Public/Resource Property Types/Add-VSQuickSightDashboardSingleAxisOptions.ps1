function Add-VSQuickSightDashboardSingleAxisOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.SingleAxisOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.SingleAxisOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-singleaxisoptions.html

    .PARAMETER YAxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-singleaxisoptions.html#cfn-quicksight-dashboard-singleaxisoptions-yaxisoptions
        UpdateType: Mutable
        Type: YAxisOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.SingleAxisOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $YAxisOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.SingleAxisOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
