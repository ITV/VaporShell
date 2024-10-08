function Add-VSQuickSightTemplateNumericalAggregationFunction {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.NumericalAggregationFunction resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.NumericalAggregationFunction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericalaggregationfunction.html

    .PARAMETER PercentileAggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericalaggregationfunction.html#cfn-quicksight-template-numericalaggregationfunction-percentileaggregation
        UpdateType: Mutable
        Type: PercentileAggregation

    .PARAMETER SimpleNumericalAggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-numericalaggregationfunction.html#cfn-quicksight-template-numericalaggregationfunction-simplenumericalaggregation
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.NumericalAggregationFunction')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PercentileAggregation,

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
        $SimpleNumericalAggregation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.NumericalAggregationFunction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
