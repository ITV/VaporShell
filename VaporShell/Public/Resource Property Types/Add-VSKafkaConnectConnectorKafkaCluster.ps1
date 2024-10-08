function Add-VSKafkaConnectConnectorKafkaCluster {
    <#
    .SYNOPSIS
        Adds an AWS::KafkaConnect::Connector.KafkaCluster resource property to the template.

    .DESCRIPTION
        Adds an AWS::KafkaConnect::Connector.KafkaCluster resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-kafkacluster.html

    .PARAMETER ApacheKafkaCluster
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-kafkacluster.html#cfn-kafkaconnect-connector-kafkacluster-apachekafkacluster
        UpdateType: Immutable
        Type: ApacheKafkaCluster

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.KafkaConnect.Connector.KafkaCluster')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ApacheKafkaCluster

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KafkaConnect.Connector.KafkaCluster'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
