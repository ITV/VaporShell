function Add-VSQuickSightAnalysisBodySectionDynamicCategoryDimensionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.BodySectionDynamicCategoryDimensionConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.BodySectionDynamicCategoryDimensionConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration.html

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration.html#cfn-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER SortByMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration.html#cfn-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration-sortbymetrics
        UpdateType: Mutable
        Type: List
        ItemType: ColumnSort
        DuplicatesAllowed: True

    .PARAMETER Limit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration.html#cfn-quicksight-analysis-bodysectiondynamiccategorydimensionconfiguration-limit
        UpdateType: Mutable
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.BodySectionDynamicCategoryDimensionConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Column,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.ColumnSort"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SortByMetrics,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Limit

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.BodySectionDynamicCategoryDimensionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
