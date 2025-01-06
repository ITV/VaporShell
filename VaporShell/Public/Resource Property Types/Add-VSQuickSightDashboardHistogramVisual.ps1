function Add-VSQuickSightDashboardHistogramVisual {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.HistogramVisual resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.HistogramVisual resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html

    .PARAMETER Subtitle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-subtitle
        UpdateType: Mutable
        Type: VisualSubtitleLabelOptions

    .PARAMETER VisualId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-visualid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ChartConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-chartconfiguration
        UpdateType: Mutable
        Type: HistogramConfiguration

    .PARAMETER Actions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-actions
        UpdateType: Mutable
        Type: List
        ItemType: VisualCustomAction
        DuplicatesAllowed: True

    .PARAMETER Title
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-title
        UpdateType: Mutable
        Type: VisualTitleLabelOptions

    .PARAMETER VisualContentAltText
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-histogramvisual.html#cfn-quicksight-dashboard-histogramvisual-visualcontentalttext
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.HistogramVisual')]
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
                $allowedTypes = "Vaporshell.Resource.QuickSight.Dashboard.VisualCustomAction"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Actions,

        [Parameter(Mandatory = $false)]
        $Title,

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
        $VisualContentAltText

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.HistogramVisual'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
