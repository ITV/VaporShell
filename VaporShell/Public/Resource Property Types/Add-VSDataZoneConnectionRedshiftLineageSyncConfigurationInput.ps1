function Add-VSDataZoneConnectionRedshiftLineageSyncConfigurationInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Connection.RedshiftLineageSyncConfigurationInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Connection.RedshiftLineageSyncConfigurationInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftlineagesyncconfigurationinput.html

    .PARAMETER Schedule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftlineagesyncconfigurationinput.html#cfn-datazone-connection-redshiftlineagesyncconfigurationinput-schedule
        UpdateType: Mutable
        Type: LineageSyncSchedule

    .PARAMETER Enabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-redshiftlineagesyncconfigurationinput.html#cfn-datazone-connection-redshiftlineagesyncconfigurationinput-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Connection.RedshiftLineageSyncConfigurationInput')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Schedule,

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
        $Enabled

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Connection.RedshiftLineageSyncConfigurationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
