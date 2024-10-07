function Add-VSQuickSightDashboardAxisScale {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.AxisScale resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.AxisScale resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axisscale.html

    .PARAMETER Logarithmic
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axisscale.html#cfn-quicksight-dashboard-axisscale-logarithmic
        UpdateType: Mutable
        Type: AxisLogarithmicScale

    .PARAMETER Linear
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-axisscale.html#cfn-quicksight-dashboard-axisscale-linear
        UpdateType: Mutable
        Type: AxisLinearScale

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.AxisScale')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Logarithmic,
        [parameter(Mandatory = $false)]
        $Linear
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.AxisScale'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
