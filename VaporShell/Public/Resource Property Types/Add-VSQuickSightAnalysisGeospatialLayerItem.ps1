function Add-VSQuickSightAnalysisGeospatialLayerItem {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialLayerItem resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialLayerItem resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html

    .PARAMETER LayerId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-layerid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER JoinDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-joindefinition
        UpdateType: Mutable
        Type: GeospatialLayerJoinDefinition

    .PARAMETER Actions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-actions
        UpdateType: Mutable
        Type: List
        ItemType: LayerCustomAction
        DuplicatesAllowed: True

    .PARAMETER LayerType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-layertype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LayerDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-layerdefinition
        UpdateType: Mutable
        Type: GeospatialLayerDefinition

    .PARAMETER Tooltip
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-tooltip
        UpdateType: Mutable
        Type: TooltipOptions

    .PARAMETER Label
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-label
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Visibility
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-visibility
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DataSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayeritem.html#cfn-quicksight-analysis-geospatiallayeritem-datasource
        UpdateType: Mutable
        Type: GeospatialDataSourceItem

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialLayerItem')]
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
        $LayerId,

        [Parameter(Mandatory = $false)]
        $JoinDefinition,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.LayerCustomAction"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Actions,

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
        $LayerType,

        [Parameter(Mandatory = $false)]
        $LayerDefinition,

        [Parameter(Mandatory = $false)]
        $Tooltip,

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
        $Label,

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
        $DataSource

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialLayerItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
