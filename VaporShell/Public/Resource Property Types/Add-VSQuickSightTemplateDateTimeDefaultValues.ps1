function Add-VSQuickSightTemplateDateTimeDefaultValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DateTimeDefaultValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DateTimeDefaultValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html

    .PARAMETER RollingDate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html#cfn-quicksight-template-datetimedefaultvalues-rollingdate
        UpdateType: Mutable
        Type: RollingDateConfiguration

    .PARAMETER DynamicValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html#cfn-quicksight-template-datetimedefaultvalues-dynamicvalue
        UpdateType: Mutable
        Type: DynamicDefaultValue

    .PARAMETER StaticValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-datetimedefaultvalues.html#cfn-quicksight-template-datetimedefaultvalues-staticvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.DateTimeDefaultValues')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RollingDate,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DateTimeDefaultValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
