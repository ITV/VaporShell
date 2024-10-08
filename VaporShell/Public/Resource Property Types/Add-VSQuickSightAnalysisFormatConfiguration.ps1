function Add-VSQuickSightAnalysisFormatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.FormatConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.FormatConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html

    .PARAMETER NumberFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html#cfn-quicksight-analysis-formatconfiguration-numberformatconfiguration
        UpdateType: Mutable
        Type: NumberFormatConfiguration

    .PARAMETER DateTimeFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html#cfn-quicksight-analysis-formatconfiguration-datetimeformatconfiguration
        UpdateType: Mutable
        Type: DateTimeFormatConfiguration

    .PARAMETER StringFormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html#cfn-quicksight-analysis-formatconfiguration-stringformatconfiguration
        UpdateType: Mutable
        Type: StringFormatConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.FormatConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NumberFormatConfiguration,

        [Parameter(Mandatory = $false)]
        $DateTimeFormatConfiguration,

        [Parameter(Mandatory = $false)]
        $StringFormatConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.FormatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
