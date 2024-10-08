function Add-VSQuickSightAnalysisIntegerDefaultValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.IntegerDefaultValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.IntegerDefaultValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-integerdefaultvalues.html

    .PARAMETER DynamicValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-integerdefaultvalues.html#cfn-quicksight-analysis-integerdefaultvalues-dynamicvalue
        UpdateType: Mutable
        Type: DynamicDefaultValue

    .PARAMETER StaticValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-integerdefaultvalues.html#cfn-quicksight-analysis-integerdefaultvalues-staticvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Double
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.IntegerDefaultValues')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DynamicValue,

        [Parameter(Mandatory = $false)]
        $StaticValues

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.IntegerDefaultValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
