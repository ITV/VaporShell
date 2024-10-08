function Add-VSIoTEventsAlarmModelAlarmCapabilities {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::AlarmModel.AlarmCapabilities resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTEvents::AlarmModel.AlarmCapabilities resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmcapabilities.html

    .PARAMETER AcknowledgeFlow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmcapabilities.html#cfn-iotevents-alarmmodel-alarmcapabilities-acknowledgeflow
        UpdateType: Mutable
        Type: AcknowledgeFlow

    .PARAMETER InitializationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-alarmcapabilities.html#cfn-iotevents-alarmmodel-alarmcapabilities-initializationconfiguration
        UpdateType: Mutable
        Type: InitializationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTEvents.AlarmModel.AlarmCapabilities')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AcknowledgeFlow,

        [Parameter(Mandatory = $false)]
        $InitializationConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.AlarmModel.AlarmCapabilities'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
