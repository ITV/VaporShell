function Add-VSQuickSightDashboardMeasureField {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.MeasureField resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.MeasureField resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-measurefield.html

    .PARAMETER DateMeasureField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-measurefield.html#cfn-quicksight-dashboard-measurefield-datemeasurefield
        UpdateType: Mutable
        Type: DateMeasureField

    .PARAMETER NumericalMeasureField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-measurefield.html#cfn-quicksight-dashboard-measurefield-numericalmeasurefield
        UpdateType: Mutable
        Type: NumericalMeasureField

    .PARAMETER CategoricalMeasureField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-measurefield.html#cfn-quicksight-dashboard-measurefield-categoricalmeasurefield
        UpdateType: Mutable
        Type: CategoricalMeasureField

    .PARAMETER CalculatedMeasureField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-measurefield.html#cfn-quicksight-dashboard-measurefield-calculatedmeasurefield
        UpdateType: Mutable
        Type: CalculatedMeasureField

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.MeasureField')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DateMeasureField,
        [parameter(Mandatory = $false)]
        $NumericalMeasureField,
        [parameter(Mandatory = $false)]
        $CategoricalMeasureField,
        [parameter(Mandatory = $false)]
        $CalculatedMeasureField
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.MeasureField'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
