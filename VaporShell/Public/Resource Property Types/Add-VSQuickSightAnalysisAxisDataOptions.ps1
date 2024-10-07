function Add-VSQuickSightAnalysisAxisDataOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.AxisDataOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.AxisDataOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisdataoptions.html

    .PARAMETER DateAxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisdataoptions.html#cfn-quicksight-analysis-axisdataoptions-dateaxisoptions
        UpdateType: Mutable
        Type: DateAxisOptions

    .PARAMETER NumericAxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-axisdataoptions.html#cfn-quicksight-analysis-axisdataoptions-numericaxisoptions
        UpdateType: Mutable
        Type: NumericAxisOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.AxisDataOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DateAxisOptions,
        [parameter(Mandatory = $false)]
        $NumericAxisOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.AxisDataOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
