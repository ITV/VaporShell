function Add-VSQuickSightAnalysisGeospatialLayerJoinDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialLayerJoinDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialLayerJoinDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html

    .PARAMETER ColorField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html#cfn-quicksight-analysis-geospatiallayerjoindefinition-colorfield
        UpdateType: Mutable
        Type: GeospatialLayerColorField

    .PARAMETER ShapeKeyField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html#cfn-quicksight-analysis-geospatiallayerjoindefinition-shapekeyfield
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DatasetKeyField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatiallayerjoindefinition.html#cfn-quicksight-analysis-geospatiallayerjoindefinition-datasetkeyfield
        UpdateType: Mutable
        Type: UnaggregatedField

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialLayerJoinDefinition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ColorField,

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
        $ShapeKeyField,

        [Parameter(Mandatory = $false)]
        $DatasetKeyField

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialLayerJoinDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
