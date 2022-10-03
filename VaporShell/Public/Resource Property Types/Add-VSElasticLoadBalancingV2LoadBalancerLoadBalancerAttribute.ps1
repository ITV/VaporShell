function Add-VSElasticLoadBalancingV2LoadBalancerLoadBalancerAttribute {
    <#
    .SYNOPSIS
        Adds an AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute resource property to the template. Specifies an attribute for an Application Load Balancer, a Network Load Balancer, or a Gateway Load Balancer.

    .DESCRIPTION
        Adds an AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute resource property to the template.
Specifies an attribute for an Application Load Balancer, a Network Load Balancer, or a Gateway Load Balancer.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html

    .PARAMETER Key
        The name of the attribute.
The following attribute is supported by all load balancers:
+  deletion_protection.enabled - Indicates whether deletion protection is enabled. The value is true or false. The default is false.
The following attributes are supported by both Application Load Balancers and Network Load Balancers:
+  access_logs.s3.enabled - Indicates whether access logs are enabled. The value is true or false. The default is false.
+  access_logs.s3.bucket - The name of the S3 bucket for the access logs. This attribute is required if access logs are enabled. The bucket must exist in the same region as the load balancer and have a bucket policy that grants Elastic Load Balancing permissions to write to the bucket.
+  access_logs.s3.prefix - The prefix for the location in the S3 bucket for the access logs.
+  ipv6.deny_all_igw_traffic - Blocks internet gateway IGW access to the load balancer. It is set to false for internet-facing load balancers and true for internal load balancers, preventing unintended access to your internal load balancer through an internet gateway.
The following attributes are supported by only Application Load Balancers:
+  idle_timeout.timeout_seconds - The idle timeout value, in seconds. The valid range is 1-4000 seconds. The default is 60 seconds.
+  routing.http.desync_mitigation_mode - Determines how the load balancer handles requests that might pose a security risk to your application. The possible values are monitor, defensive, and strictest. The default is defensive.
+  routing.http.drop_invalid_header_fields.enabled - Indicates whether HTTP headers with invalid header fields are removed by the load balancer true or routed to targets false. The default is false.
+  routing.http.x_amzn_tls_version_and_cipher_suite.enabled - Indicates whether the two headers x-amzn-tls-version and x-amzn-tls-cipher-suite, which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. The x-amzn-tls-version header has information about the TLS protocol version negotiated with the client, and the x-amzn-tls-cipher-suite header has information about the cipher suite negotiated with the client. Both headers are in OpenSSL format. The possible values for the attribute are true and false. The default is false.
+  routing.http.xff_client_port.enabled - Indicates whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer. The possible values are true and false. The default is false.
+  routing.http2.enabled - Indicates whether HTTP/2 is enabled. The possible values are true and false. The default is true. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens.
+  waf.fail_open.enabled - Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. The possible values are true and false. The default is false.
The following attribute is supported by Network Load Balancers and Gateway Load Balancers:
+  load_balancing.cross_zone.enabled - Indicates whether cross-zone load balancing is enabled. The possible values are true and false. The default is false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-key
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Value
        The value of the attribute.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattributes.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattributes-value
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttribute')]
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
        $Key,
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
        $Value
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttribute'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
