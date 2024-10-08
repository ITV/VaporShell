function Add-VSQuickSightDashboardLineSeriesAxisDisplayOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.LineSeriesAxisDisplayOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.LineSeriesAxisDisplayOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-lineseriesaxisdisplayoptions.html

    .PARAMETER MissingDataConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-lineseriesaxisdisplayoptions.html#cfn-quicksight-dashboard-lineseriesaxisdisplayoptions-missingdataconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: MissingDataConfiguration
        DuplicatesAllowed: True

    .PARAMETER AxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-lineseriesaxisdisplayoptions.html#cfn-quicksight-dashboard-lineseriesaxisdisplayoptions-axisoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.LineSeriesAxisDisplayOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Dashboard.MissingDataConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MissingDataConfigurations,

        [Parameter(Mandatory = $false)]
        $AxisOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.LineSeriesAxisDisplayOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
