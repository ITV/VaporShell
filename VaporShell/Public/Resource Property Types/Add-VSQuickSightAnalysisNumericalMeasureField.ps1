function Add-VSQuickSightAnalysisNumericalMeasureField {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.NumericalMeasureField resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.NumericalMeasureField resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html

    .PARAMETER AggregationFunction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-aggregationfunction
        UpdateType: Mutable
        Type: NumericalAggregationFunction

    .PARAMETER FormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-formatconfiguration
        UpdateType: Mutable
        Type: NumberFormatConfiguration

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER FieldId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numericalmeasurefield.html#cfn-quicksight-analysis-numericalmeasurefield-fieldid
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.NumericalMeasureField')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AggregationFunction,

        [Parameter(Mandatory = $false)]
        $FormatConfiguration,

        [Parameter(Mandatory = $true)]
        $Column,

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
        $FieldId

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.NumericalMeasureField'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
