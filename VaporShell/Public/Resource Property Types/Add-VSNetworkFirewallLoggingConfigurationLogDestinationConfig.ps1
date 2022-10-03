function Add-VSNetworkFirewallLoggingConfigurationLogDestinationConfig {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkFirewall::LoggingConfiguration.LogDestinationConfig resource property to the template. Defines where AWS Network Firewall sends logs for the firewall for one log type. This is used in AWS::NetworkFirewall::LoggingConfiguration: aws-resource-networkfirewall-loggingconfiguration.md. You can send each type of log to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis Data Firehose delivery stream.

    .DESCRIPTION
        Adds an AWS::NetworkFirewall::LoggingConfiguration.LogDestinationConfig resource property to the template.
Defines where AWS Network Firewall sends logs for the firewall for one log type. This is used in AWS::NetworkFirewall::LoggingConfiguration: aws-resource-networkfirewall-loggingconfiguration.md. You can send each type of log to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis Data Firehose delivery stream.

Network Firewall generates logs for stateful rule groups. You can save alert and flow log types. The stateful rules engine records flow logs for all network traffic that it receives. It records alert logs for traffic that matches stateful rules that have the rule action set to DROP or ALERT.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html

    .PARAMETER LogType
        The type of log to send. Alert logs report traffic that matches a stateful rule with an action setting that sends an alert log message. Flow logs are standard network traffic flow logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html#cfn-networkfirewall-loggingconfiguration-logdestinationconfig-logtype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LogDestinationType
        The type of storage destination to send these logs to. You can send logs to an Amazon S3 bucket, a CloudWatch log group, or a Kinesis Data Firehose delivery stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html#cfn-networkfirewall-loggingconfiguration-logdestinationconfig-logdestinationtype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LogDestination
        The named location for the logs, provided in a key:value mapping that is specific to the chosen destination type.
+ For an Amazon S3 bucket, provide the name of the bucket, with key bucketName, and optionally provide a prefix, with key prefix. The following example specifies an Amazon S3 bucket named DOC-EXAMPLE-BUCKET and the prefix alerts:
"LogDestination": { "bucketName": "DOC-EXAMPLE-BUCKET", "prefix": "alerts" }
+ For a CloudWatch log group, provide the name of the CloudWatch log group, with key logGroup. The following example specifies a log group named alert-log-group:
"LogDestination": { "logGroup": "alert-log-group" }
+ For a Kinesis Data Firehose delivery stream, provide the name of the delivery stream, with key deliveryStream. The following example specifies a delivery stream named alert-delivery-stream:
"LogDestination": { "deliveryStream": "alert-delivery-stream" }

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-loggingconfiguration-logdestinationconfig.html#cfn-networkfirewall-loggingconfiguration-logdestinationconfig-logdestination
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NetworkFirewall.LoggingConfiguration.LogDestinationConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LogType,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LogDestinationType,
        [parameter(Mandatory = $true)]
        [System.Collections.Hashtable]
        $LogDestination
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkFirewall.LoggingConfiguration.LogDestinationConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
