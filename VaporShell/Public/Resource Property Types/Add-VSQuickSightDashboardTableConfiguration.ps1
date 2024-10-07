function Add-VSQuickSightDashboardTableConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.TableConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.TableConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: TableSortConfiguration

    .PARAMETER PaginatedReportOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-paginatedreportoptions
        UpdateType: Mutable
        Type: TablePaginatedReportOptions

    .PARAMETER TableOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-tableoptions
        UpdateType: Mutable
        Type: TableOptions

    .PARAMETER TableInlineVisualizations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-tableinlinevisualizations
        UpdateType: Mutable
        Type: List
        ItemType: TableInlineVisualization
        DuplicatesAllowed: True

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-fieldwells
        UpdateType: Mutable
        Type: TableFieldWells

    .PARAMETER FieldOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-fieldoptions
        UpdateType: Mutable
        Type: TableFieldOptions

    .PARAMETER TotalOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconfiguration.html#cfn-quicksight-dashboard-tableconfiguration-totaloptions
        UpdateType: Mutable
        Type: TotalOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.TableConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SortConfiguration,
        [parameter(Mandatory = $false)]
        $PaginatedReportOptions,
        [parameter(Mandatory = $false)]
        $TableOptions,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Dashboard.TableInlineVisualization"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TableInlineVisualizations,
        [parameter(Mandatory = $false)]
        $FieldWells,
        [parameter(Mandatory = $false)]
        $FieldOptions,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.TableConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
