function Add-VSQuickSightAnalysisTreeMapSortConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TreeMapSortConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TreeMapSortConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapsortconfiguration.html

    .PARAMETER TreeMapSort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapsortconfiguration.html#cfn-quicksight-analysis-treemapsortconfiguration-treemapsort
        UpdateType: Mutable
        Type: List
        ItemType: FieldSortOptions
        DuplicatesAllowed: True

    .PARAMETER TreeMapGroupItemsLimitConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapsortconfiguration.html#cfn-quicksight-analysis-treemapsortconfiguration-treemapgroupitemslimitconfiguration
        UpdateType: Mutable
        Type: ItemsLimitConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TreeMapSortConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.FieldSortOptions"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TreeMapSort,

        [Parameter(Mandatory = $false)]
        $TreeMapGroupItemsLimitConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TreeMapSortConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
