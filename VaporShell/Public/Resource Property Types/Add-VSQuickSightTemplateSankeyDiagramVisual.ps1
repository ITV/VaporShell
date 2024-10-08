function Add-VSQuickSightTemplateSankeyDiagramVisual {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.SankeyDiagramVisual resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.SankeyDiagramVisual resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramvisual.html

    .PARAMETER Subtitle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramvisual.html#cfn-quicksight-template-sankeydiagramvisual-subtitle
        UpdateType: Mutable
        Type: VisualSubtitleLabelOptions

    .PARAMETER VisualId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramvisual.html#cfn-quicksight-template-sankeydiagramvisual-visualid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ChartConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramvisual.html#cfn-quicksight-template-sankeydiagramvisual-chartconfiguration
        UpdateType: Mutable
        Type: SankeyDiagramChartConfiguration

    .PARAMETER Actions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramvisual.html#cfn-quicksight-template-sankeydiagramvisual-actions
        UpdateType: Mutable
        Type: List
        ItemType: VisualCustomAction
        DuplicatesAllowed: True

    .PARAMETER Title
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramvisual.html#cfn-quicksight-template-sankeydiagramvisual-title
        UpdateType: Mutable
        Type: VisualTitleLabelOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.SankeyDiagramVisual')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Subtitle,

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
        $VisualId,

        [Parameter(Mandatory = $false)]
        $ChartConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.VisualCustomAction"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Actions,

        [Parameter(Mandatory = $false)]
        $Title

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.SankeyDiagramVisual'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
