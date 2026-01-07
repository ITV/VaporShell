function Add-VSQuickSightDashboardBodySectionRepeatDimensionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.BodySectionRepeatDimensionConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.BodySectionRepeatDimensionConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatdimensionconfiguration.html

    .PARAMETER DynamicNumericDimensionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatdimensionconfiguration.html#cfn-quicksight-dashboard-bodysectionrepeatdimensionconfiguration-dynamicnumericdimensionconfiguration
        UpdateType: Mutable
        Type: BodySectionDynamicNumericDimensionConfiguration

    .PARAMETER DynamicCategoryDimensionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatdimensionconfiguration.html#cfn-quicksight-dashboard-bodysectionrepeatdimensionconfiguration-dynamiccategorydimensionconfiguration
        UpdateType: Mutable
        Type: BodySectionDynamicCategoryDimensionConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.BodySectionRepeatDimensionConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DynamicNumericDimensionConfiguration,

        [Parameter(Mandatory = $false)]
        $DynamicCategoryDimensionConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.BodySectionRepeatDimensionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
