function Add-VSQuickSightTemplateDecimalDefaultValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DecimalDefaultValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DecimalDefaultValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimaldefaultvalues.html

    .PARAMETER DynamicValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimaldefaultvalues.html#cfn-quicksight-template-decimaldefaultvalues-dynamicvalue
        UpdateType: Mutable
        Type: DynamicDefaultValue

    .PARAMETER StaticValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-decimaldefaultvalues.html#cfn-quicksight-template-decimaldefaultvalues-staticvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Double
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DecimalDefaultValues')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DecimalDefaultValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
