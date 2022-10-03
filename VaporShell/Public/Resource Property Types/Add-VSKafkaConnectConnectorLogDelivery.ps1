function Add-VSKafkaConnectConnectorLogDelivery {
    <#
    .SYNOPSIS
        Adds an AWS::KafkaConnect::Connector.LogDelivery resource property to the template. Details about log delivery.

    .DESCRIPTION
        Adds an AWS::KafkaConnect::Connector.LogDelivery resource property to the template.
Details about log delivery.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-logdelivery.html

    .PARAMETER WorkerLogDelivery
        The workers can send worker logs to different destination types. This configuration specifies the details of these destinations.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-logdelivery.html#cfn-kafkaconnect-connector-logdelivery-workerlogdelivery
        UpdateType: Immutable
        Type: WorkerLogDelivery

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KafkaConnect.Connector.LogDelivery')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $WorkerLogDelivery
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KafkaConnect.Connector.LogDelivery'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
