function Add-VSODBCloudExadataInfrastructureMaintenanceWindow {
    <#
    .SYNOPSIS
        Adds an AWS::ODB::CloudExadataInfrastructure.MaintenanceWindow resource property to the template.

    .DESCRIPTION
        Adds an AWS::ODB::CloudExadataInfrastructure.MaintenanceWindow resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html

    .PARAMETER CustomActionTimeoutInMins
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-customactiontimeoutinmins
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER DaysOfWeek
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-daysofweek
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Preference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-preference
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LeadTimeInWeeks
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-leadtimeinweeks
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Months
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-months
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER PatchingMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-patchingmode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER WeeksOfMonth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-weeksofmonth
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Integer
        DuplicatesAllowed: False

    .PARAMETER IsCustomActionTimeoutEnabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-iscustomactiontimeoutenabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER HoursOfDay
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-cloudexadatainfrastructure-maintenancewindow.html#cfn-odb-cloudexadatainfrastructure-maintenancewindow-hoursofday
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: Integer
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ODB.CloudExadataInfrastructure.MaintenanceWindow')]
    [CmdletBinding()]

    Param
    (
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
        $CustomActionTimeoutInMins,

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
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PatchingMode,

        [Parameter(Mandatory = $false)]
        $WeeksOfMonth,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IsCustomActionTimeoutEnabled,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ODB.CloudExadataInfrastructure.MaintenanceWindow'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
