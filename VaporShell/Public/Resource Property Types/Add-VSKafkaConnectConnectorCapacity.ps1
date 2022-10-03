function Add-VSKafkaConnectConnectorCapacity {
    <#
    .SYNOPSIS
        Adds an AWS::KafkaConnect::Connector.Capacity resource property to the template. Information about the capacity of the connector, whether it is auto scaled or provisioned.

    .DESCRIPTION
        Adds an AWS::KafkaConnect::Connector.Capacity resource property to the template.
Information about the capacity of the connector, whether it is auto scaled or provisioned.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-capacity.html

    .PARAMETER AutoScaling
        Information about the auto scaling parameters for the connector.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-capacity.html#cfn-kafkaconnect-connector-capacity-autoscaling
        UpdateType: Mutable
        Type: AutoScaling

    .PARAMETER ProvisionedCapacity
        Details about a fixed capacity allocated to a connector.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-capacity.html#cfn-kafkaconnect-connector-capacity-provisionedcapacity
        UpdateType: Mutable
        Type: ProvisionedCapacity

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KafkaConnect.Connector.Capacity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AutoScaling,
        [parameter(Mandatory = $false)]
        $ProvisionedCapacity
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KafkaConnect.Connector.Capacity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
