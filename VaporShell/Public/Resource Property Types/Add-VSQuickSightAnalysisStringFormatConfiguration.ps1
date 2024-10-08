function Add-VSQuickSightAnalysisStringFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.StringFormatConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.StringFormatConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringformatconfiguration.html

    .PARAMETER NumericFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringformatconfiguration.html#cfn-quicksight-analysis-stringformatconfiguration-numericformatconfiguration
        UpdateType: Mutable
        Type: NumericFormatConfiguration

    .PARAMETER NullValueFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-stringformatconfiguration.html#cfn-quicksight-analysis-stringformatconfiguration-nullvalueformatconfiguration
        UpdateType: Mutable
        Type: NullValueFormatConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.StringFormatConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NumericFormatConfiguration,

        [Parameter(Mandatory = $false)]
        $NullValueFormatConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.StringFormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
