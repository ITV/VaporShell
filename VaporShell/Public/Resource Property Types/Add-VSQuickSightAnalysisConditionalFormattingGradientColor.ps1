function Add-VSQuickSightAnalysisConditionalFormattingGradientColor {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.ConditionalFormattingGradientColor resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.ConditionalFormattingGradientColor resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattinggradientcolor.html

    .PARAMETER Expression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattinggradientcolor.html#cfn-quicksight-analysis-conditionalformattinggradientcolor-expression
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Color
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattinggradientcolor.html#cfn-quicksight-analysis-conditionalformattinggradientcolor-color
        UpdateType: Mutable
        Type: GradientColor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.ConditionalFormattingGradientColor')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Expression,

        [Parameter(Mandatory = $true)]
        $Color

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.ConditionalFormattingGradientColor'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
