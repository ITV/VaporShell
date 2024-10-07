function Add-VSQuickSightTemplateDataLabelType {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DataLabelType resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DataLabelType resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datalabeltype.html

    .PARAMETER MaximumLabelType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datalabeltype.html#cfn-quicksight-template-datalabeltype-maximumlabeltype
        UpdateType: Mutable
        Type: MaximumLabelType

    .PARAMETER DataPathLabelType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datalabeltype.html#cfn-quicksight-template-datalabeltype-datapathlabeltype
        UpdateType: Mutable
        Type: DataPathLabelType

    .PARAMETER RangeEndsLabelType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datalabeltype.html#cfn-quicksight-template-datalabeltype-rangeendslabeltype
        UpdateType: Mutable
        Type: RangeEndsLabelType

    .PARAMETER FieldLabelType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datalabeltype.html#cfn-quicksight-template-datalabeltype-fieldlabeltype
        UpdateType: Mutable
        Type: FieldLabelType

    .PARAMETER MinimumLabelType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datalabeltype.html#cfn-quicksight-template-datalabeltype-minimumlabeltype
        UpdateType: Mutable
        Type: MinimumLabelType

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.DataLabelType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MaximumLabelType,
        [parameter(Mandatory = $false)]
        $DataPathLabelType,
        [parameter(Mandatory = $false)]
        $RangeEndsLabelType,
        [parameter(Mandatory = $false)]
        $FieldLabelType,
        [parameter(Mandatory = $false)]
        $MinimumLabelType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DataLabelType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
