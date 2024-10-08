function Add-VSQuickSightAnalysisForecastScenario {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ForecastScenario resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ForecastScenario resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-forecastscenario.html

    .PARAMETER WhatIfRangeScenario
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-forecastscenario.html#cfn-quicksight-analysis-forecastscenario-whatifrangescenario
        UpdateType: Mutable
        Type: WhatIfRangeScenario

    .PARAMETER WhatIfPointScenario
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-forecastscenario.html#cfn-quicksight-analysis-forecastscenario-whatifpointscenario
        UpdateType: Mutable
        Type: WhatIfPointScenario

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ForecastScenario')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $WhatIfRangeScenario,

        [Parameter(Mandatory = $false)]
        $WhatIfPointScenario

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ForecastScenario'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
