function Add-VSQuickSightDashboardParameterDeclaration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ParameterDeclaration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ParameterDeclaration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html

    .PARAMETER StringParameterDeclaration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-stringparameterdeclaration
        UpdateType: Mutable
        Type: StringParameterDeclaration

    .PARAMETER DateTimeParameterDeclaration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-datetimeparameterdeclaration
        UpdateType: Mutable
        Type: DateTimeParameterDeclaration

    .PARAMETER DecimalParameterDeclaration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-decimalparameterdeclaration
        UpdateType: Mutable
        Type: DecimalParameterDeclaration

    .PARAMETER IntegerParameterDeclaration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-parameterdeclaration.html#cfn-quicksight-dashboard-parameterdeclaration-integerparameterdeclaration
        UpdateType: Mutable
        Type: IntegerParameterDeclaration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ParameterDeclaration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $StringParameterDeclaration,

        [Parameter(Mandatory = $false)]
        $DateTimeParameterDeclaration,

        [Parameter(Mandatory = $false)]
        $DecimalParameterDeclaration,

        [Parameter(Mandatory = $false)]
        $IntegerParameterDeclaration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ParameterDeclaration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
