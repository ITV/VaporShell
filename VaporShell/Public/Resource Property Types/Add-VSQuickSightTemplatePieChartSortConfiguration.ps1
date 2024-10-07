function Add-VSQuickSightTemplatePieChartSortConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.PieChartSortConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.PieChartSortConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html

    .PARAMETER SmallMultiplesSort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-smallmultiplessort
        UpdateType: Mutable
        Type: List
        ItemType: FieldSortOptions
        DuplicatesAllowed: True

    .PARAMETER CategoryItemsLimit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-categoryitemslimit
        UpdateType: Mutable
        Type: ItemsLimitConfiguration

    .PARAMETER CategorySort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-categorysort
        UpdateType: Mutable
        Type: List
        ItemType: FieldSortOptions
        DuplicatesAllowed: True

    .PARAMETER SmallMultiplesLimitConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartsortconfiguration.html#cfn-quicksight-template-piechartsortconfiguration-smallmultipleslimitconfiguration
        UpdateType: Mutable
        Type: ItemsLimitConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.PieChartSortConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.FieldSortOptions"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SmallMultiplesSort,
        [parameter(Mandatory = $false)]
        $CategoryItemsLimit,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.FieldSortOptions"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CategorySort,
        [parameter(Mandatory = $false)]
        $SmallMultiplesLimitConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.PieChartSortConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
