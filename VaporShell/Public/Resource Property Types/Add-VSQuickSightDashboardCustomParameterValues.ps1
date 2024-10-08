function Add-VSQuickSightDashboardCustomParameterValues {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.CustomParameterValues resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.CustomParameterValues resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customparametervalues.html

    .PARAMETER DecimalValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customparametervalues.html#cfn-quicksight-dashboard-customparametervalues-decimalvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Double
        DuplicatesAllowed: True

    .PARAMETER IntegerValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customparametervalues.html#cfn-quicksight-dashboard-customparametervalues-integervalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Double
        DuplicatesAllowed: True

    .PARAMETER StringValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customparametervalues.html#cfn-quicksight-dashboard-customparametervalues-stringvalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER DateTimeValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-customparametervalues.html#cfn-quicksight-dashboard-customparametervalues-datetimevalues
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.CustomParameterValues')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DecimalValues,

        [Parameter(Mandatory = $false)]
        $IntegerValues,

        [Parameter(Mandatory = $false)]
        $StringValues,

        [Parameter(Mandatory = $false)]
        $DateTimeValues

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.CustomParameterValues'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
