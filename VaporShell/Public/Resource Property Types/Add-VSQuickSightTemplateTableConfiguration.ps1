function Add-VSQuickSightTemplateTableConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TableConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TableConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: TableSortConfiguration

    .PARAMETER PaginatedReportOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-paginatedreportoptions
        UpdateType: Mutable
        Type: TablePaginatedReportOptions

    .PARAMETER TableOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-tableoptions
        UpdateType: Mutable
        Type: TableOptions

    .PARAMETER TableInlineVisualizations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-tableinlinevisualizations
        UpdateType: Mutable
        Type: List
        ItemType: TableInlineVisualization
        DuplicatesAllowed: True

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-fieldwells
        UpdateType: Mutable
        Type: TableFieldWells

    .PARAMETER FieldOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-fieldoptions
        UpdateType: Mutable
        Type: TableFieldOptions

    .PARAMETER TotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tableconfiguration.html#cfn-quicksight-template-tableconfiguration-totaloptions
        UpdateType: Mutable
        Type: TotalOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.TableConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $PaginatedReportOptions,

        [Parameter(Mandatory = $false)]
        $TableOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.TableInlineVisualization"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TableInlineVisualizations,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $FieldOptions,

        [Parameter(Mandatory = $false)]
        $TotalOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TableConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
