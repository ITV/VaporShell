function Add-VSQuickSightAnalysisAnalysisDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.AnalysisDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.AnalysisDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html

    .PARAMETER Options
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-options
        UpdateType: Mutable
        Type: AssetOptions

    .PARAMETER FilterGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-filtergroups
        UpdateType: Mutable
        Type: List
        ItemType: FilterGroup
        DuplicatesAllowed: True

    .PARAMETER QueryExecutionOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-queryexecutionoptions
        UpdateType: Mutable
        Type: QueryExecutionOptions

    .PARAMETER StaticFiles
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-staticfiles
        UpdateType: Mutable
        Type: List
        ItemType: StaticFile
        DuplicatesAllowed: True

    .PARAMETER CalculatedFields
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-calculatedfields
        UpdateType: Mutable
        Type: List
        ItemType: CalculatedField
        DuplicatesAllowed: True

    .PARAMETER DataSetIdentifierDeclarations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-datasetidentifierdeclarations
        UpdateType: Mutable
        Type: List
        ItemType: DataSetIdentifierDeclaration
        DuplicatesAllowed: True

    .PARAMETER ColumnConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-columnconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: ColumnConfiguration
        DuplicatesAllowed: True

    .PARAMETER AnalysisDefaults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-analysisdefaults
        UpdateType: Mutable
        Type: AnalysisDefaults

    .PARAMETER Sheets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-sheets
        UpdateType: Mutable
        Type: List
        ItemType: SheetDefinition
        DuplicatesAllowed: True

    .PARAMETER ParameterDeclarations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysisdefinition.html#cfn-quicksight-analysis-analysisdefinition-parameterdeclarations
        UpdateType: Mutable
        Type: List
        ItemType: ParameterDeclaration
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.AnalysisDefinition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Options,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.FilterGroup"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FilterGroups,

        [Parameter(Mandatory = $false)]
        $QueryExecutionOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.StaticFile"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StaticFiles,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.CalculatedField"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CalculatedFields,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.DataSetIdentifierDeclaration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DataSetIdentifierDeclarations,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.ColumnConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ColumnConfigurations,

        [Parameter(Mandatory = $false)]
        $AnalysisDefaults,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.SheetDefinition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Sheets,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.ParameterDeclaration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ParameterDeclarations

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.AnalysisDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
