function Add-VSQuickSightDashboardVisualCustomActionOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.VisualCustomActionOperation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.VisualCustomActionOperation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualcustomactionoperation.html

    .PARAMETER NavigationOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualcustomactionoperation.html#cfn-quicksight-dashboard-visualcustomactionoperation-navigationoperation
        UpdateType: Mutable
        Type: CustomActionNavigationOperation

    .PARAMETER SetParametersOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualcustomactionoperation.html#cfn-quicksight-dashboard-visualcustomactionoperation-setparametersoperation
        UpdateType: Mutable
        Type: CustomActionSetParametersOperation

    .PARAMETER FilterOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualcustomactionoperation.html#cfn-quicksight-dashboard-visualcustomactionoperation-filteroperation
        UpdateType: Mutable
        Type: CustomActionFilterOperation

    .PARAMETER URLOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualcustomactionoperation.html#cfn-quicksight-dashboard-visualcustomactionoperation-urloperation
        UpdateType: Mutable
        Type: CustomActionURLOperation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.VisualCustomActionOperation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NavigationOperation,
        [parameter(Mandatory = $false)]
        $SetParametersOperation,
        [parameter(Mandatory = $false)]
        $FilterOperation,
        [parameter(Mandatory = $false)]
        $URLOperation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.VisualCustomActionOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
