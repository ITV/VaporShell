function Add-VSQuickSightAnalysisSheetImageTooltipConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.SheetImageTooltipConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.SheetImageTooltipConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagetooltipconfiguration.html

    .PARAMETER Visibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagetooltipconfiguration.html#cfn-quicksight-analysis-sheetimagetooltipconfiguration-visibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TooltipText
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sheetimagetooltipconfiguration.html#cfn-quicksight-analysis-sheetimagetooltipconfiguration-tooltiptext
        UpdateType: Mutable
        Type: SheetImageTooltipText

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.SheetImageTooltipConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Visibility,

        [Parameter(Mandatory = $false)]
        $TooltipText

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.SheetImageTooltipConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
