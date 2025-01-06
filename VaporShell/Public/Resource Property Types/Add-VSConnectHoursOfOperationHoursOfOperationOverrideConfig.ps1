function Add-VSConnectHoursOfOperationHoursOfOperationOverrideConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::HoursOfOperation.HoursOfOperationOverrideConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::HoursOfOperation.HoursOfOperationOverrideConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html

    .PARAMETER EndTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html#cfn-connect-hoursofoperation-hoursofoperationoverrideconfig-endtime
        UpdateType: Mutable
        Type: OverrideTimeSlice

    .PARAMETER StartTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html#cfn-connect-hoursofoperation-hoursofoperationoverrideconfig-starttime
        UpdateType: Mutable
        Type: OverrideTimeSlice

    .PARAMETER Day
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html#cfn-connect-hoursofoperation-hoursofoperationoverrideconfig-day
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.HoursOfOperation.HoursOfOperationOverrideConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $EndTime,

        [Parameter(Mandatory = $true)]
        $StartTime,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Day

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.HoursOfOperation.HoursOfOperationOverrideConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
