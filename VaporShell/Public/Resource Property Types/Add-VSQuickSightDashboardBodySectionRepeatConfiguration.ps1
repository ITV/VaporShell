function Add-VSQuickSightDashboardBodySectionRepeatConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.BodySectionRepeatConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.BodySectionRepeatConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatconfiguration.html

    .PARAMETER DimensionConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatconfiguration.html#cfn-quicksight-dashboard-bodysectionrepeatconfiguration-dimensionconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: BodySectionRepeatDimensionConfiguration
        DuplicatesAllowed: True

    .PARAMETER NonRepeatingVisuals
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatconfiguration.html#cfn-quicksight-dashboard-bodysectionrepeatconfiguration-nonrepeatingvisuals
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER PageBreakConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-bodysectionrepeatconfiguration.html#cfn-quicksight-dashboard-bodysectionrepeatconfiguration-pagebreakconfiguration
        UpdateType: Mutable
        Type: BodySectionRepeatPageBreakConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.BodySectionRepeatConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Dashboard.BodySectionRepeatDimensionConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DimensionConfigurations,

        [Parameter(Mandatory = $false)]
        $NonRepeatingVisuals,

        [Parameter(Mandatory = $false)]
        $PageBreakConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.BodySectionRepeatConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
