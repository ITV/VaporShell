function Add-VSODBCloudAutonomousVmClusterMaintenanceWindow {
    <#
    .SYNOPSIS
        Adds an AWS::ODB::CloudAutonomousVmCluster.MaintenanceWindow resource property to the template.

    .DESCRIPTION
        Adds an AWS::ODB::CloudAutonomousVmCluster.MaintenanceWindow resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html

    .PARAMETER DaysOfWeek
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-daysofweek
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Preference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-preference
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER LeadTimeInWeeks
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-leadtimeinweeks
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER Months
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-months
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER WeeksOfMonth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-weeksofmonth
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: Integer
        DuplicatesAllowed: True

    .PARAMETER HoursOfDay
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudautonomousvmcluster-maintenancewindow.html#cfn-odb-cloudautonomousvmcluster-maintenancewindow-hoursofday
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: Integer
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ODB.CloudAutonomousVmCluster.MaintenanceWindow')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DaysOfWeek,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Preference,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LeadTimeInWeeks,

        [Parameter(Mandatory = $false)]
        $Months,

        [Parameter(Mandatory = $false)]
        $WeeksOfMonth,

        [Parameter(Mandatory = $false)]
        $HoursOfDay

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ODB.CloudAutonomousVmCluster.MaintenanceWindow'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
