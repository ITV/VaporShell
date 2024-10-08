function Add-VSQuickSightTemplateDimensionField {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DimensionField resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DimensionField resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dimensionfield.html

    .PARAMETER DateDimensionField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dimensionfield.html#cfn-quicksight-template-dimensionfield-datedimensionfield
        UpdateType: Mutable
        Type: DateDimensionField

    .PARAMETER NumericalDimensionField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dimensionfield.html#cfn-quicksight-template-dimensionfield-numericaldimensionfield
        UpdateType: Mutable
        Type: NumericalDimensionField

    .PARAMETER CategoricalDimensionField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-dimensionfield.html#cfn-quicksight-template-dimensionfield-categoricaldimensionfield
        UpdateType: Mutable
        Type: CategoricalDimensionField

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DimensionField')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DateDimensionField,

        [Parameter(Mandatory = $false)]
        $NumericalDimensionField,

        [Parameter(Mandatory = $false)]
        $CategoricalDimensionField

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DimensionField'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
