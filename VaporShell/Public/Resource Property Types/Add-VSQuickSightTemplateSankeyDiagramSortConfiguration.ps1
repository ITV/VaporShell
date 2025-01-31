function Add-VSQuickSightTemplateSankeyDiagramSortConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.SankeyDiagramSortConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.SankeyDiagramSortConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html

    .PARAMETER WeightSort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html#cfn-quicksight-template-sankeydiagramsortconfiguration-weightsort
        UpdateType: Mutable
        Type: List
        ItemType: FieldSortOptions
        DuplicatesAllowed: True

    .PARAMETER SourceItemsLimit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html#cfn-quicksight-template-sankeydiagramsortconfiguration-sourceitemslimit
        UpdateType: Mutable
        Type: ItemsLimitConfiguration

    .PARAMETER DestinationItemsLimit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-sankeydiagramsortconfiguration.html#cfn-quicksight-template-sankeydiagramsortconfiguration-destinationitemslimit
        UpdateType: Mutable
        Type: ItemsLimitConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.SankeyDiagramSortConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.FieldSortOptions"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $WeightSort,

        [Parameter(Mandatory = $false)]
        $SourceItemsLimit,

        [Parameter(Mandatory = $false)]
        $DestinationItemsLimit

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.SankeyDiagramSortConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
