function Add-VSQuickSightAnalysisConditionalFormattingColor {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ConditionalFormattingColor resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ConditionalFormattingColor resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattingcolor.html

    .PARAMETER Gradient
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattingcolor.html#cfn-quicksight-analysis-conditionalformattingcolor-gradient
        UpdateType: Mutable
        Type: ConditionalFormattingGradientColor

    .PARAMETER Solid
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattingcolor.html#cfn-quicksight-analysis-conditionalformattingcolor-solid
        UpdateType: Mutable
        Type: ConditionalFormattingSolidColor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ConditionalFormattingColor')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Gradient,

        [Parameter(Mandatory = $false)]
        $Solid

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ConditionalFormattingColor'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
