function Add-VSLambdaEventSourceMappingSourceAccessConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::EventSourceMapping.SourceAccessConfiguration resource property to the template. An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.

    .DESCRIPTION
        Adds an AWS::Lambda::EventSourceMapping.SourceAccessConfiguration resource property to the template.
An array of the authentication protocol, VPC components, or virtual host to secure and define your event source.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-sourceaccessconfiguration.html

    .PARAMETER Type
        The type of authentication protocol, VPC components, or virtual host for your event source. For example: "Type":"SASL_SCRAM_512_AUTH".
+  BASIC_AUTH - Amazon MQ The AWS Secrets Manager secret that stores your broker credentials.
+  BASIC_AUTH - Self-managed Apache Kafka The Secrets Manager ARN of your secret key used for SASL/PLAIN authentication of your Apache Kafka brokers.
+  VPC_SUBNET - The subnets associated with your VPC. Lambda connects to these subnets to fetch data from your self-managed Apache Kafka cluster.
+  VPC_SECURITY_GROUP - The VPC security group used to manage access to your self-managed Apache Kafka brokers.
+  SASL_SCRAM_256_AUTH - The Secrets Manager ARN of your secret key used for SASL SCRAM-256 authentication of your self-managed Apache Kafka brokers.
+  SASL_SCRAM_512_AUTH - The Secrets Manager ARN of your secret key used for SASL SCRAM-512 authentication of your self-managed Apache Kafka brokers.
+  VIRTUAL_HOST - Amazon MQ The name of the virtual host in your RabbitMQ broker. Lambda uses this RabbitMQ host as the event source. This property cannot be specified in an UpdateEventSourceMapping API call.
+  CLIENT_CERTIFICATE_TLS_AUTH - Amazon MSK, Self-managed Apache Kafka The Secrets Manager ARN of your secret key containing the certificate chain X.509 PEM, private key PKCS#8 PEM, and private key password optional used for mutual TLS authentication of your MSK/Apache Kafka brokers.
+  SERVER_ROOT_CA_CERTIFICATE - Self-managed Apache Kafka The Secrets Manager ARN of your secret key containing the root CA certificate X.509 PEM used for TLS encryption of your Apache Kafka brokers.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-sourceaccessconfiguration.html#cfn-lambda-eventsourcemapping-sourceaccessconfiguration-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER URI
        The value for your chosen configuration in Type. For example: "URI": "arn:aws:secretsmanager:us-east-1:01234567890:secret:MyBrokerSecretName".

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-sourceaccessconfiguration.html#cfn-lambda-eventsourcemapping-sourceaccessconfiguration-uri
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.EventSourceMapping.SourceAccessConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $URI
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.EventSourceMapping.SourceAccessConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
