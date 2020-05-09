# Add-VSServiceDiscoveryServiceDnsRecord

## SYNOPSIS
Adds an AWS::ServiceDiscovery::Service.DnsRecord resource property to the template.
A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.

## SYNTAX

```
Add-VSServiceDiscoveryServiceDnsRecord [-Type] <Object> [-TTL] <Object> [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::ServiceDiscovery::Service.DnsRecord resource property to the template.
A complex type that contains information about the Route 53 DNS records that you want AWS Cloud Map to create when you register an instance.

## PARAMETERS

### -Type
The type of the resource, which indicates the type of value that Route 53 returns in response to DNS queries.
You can specify values for Type in the following combinations:
+ A
+ AAAA
+ A and AAAA
+ SRV
+ CNAME
If you want AWS Cloud Map to create a Route 53 alias record when you register an instance, specify A or AAAA for Type.
You specify other settings, such as the IP address for A and AAAA records, when you register an instance.
For more information, see RegisterInstance: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html.
The following values are supported:
**A**
Route 53 returns the IP address of the resource in IPv4 format, such as 192.0.2.44.
**AAAA**
Route 53 returns the IP address of the resource in IPv6 format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345.
**CNAME**
Route 53 returns the domain name of the resource, such as www.example.com.
Note the following:
+ You specify the domain name that you want to route traffic to when you register an instance.
For more information, see Attributes: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html#cloudmap-RegisterInstance-request-Attributes in the topic RegisterInstance: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html.
+ You must specify WEIGHTED for the value of RoutingPolicy.
+ You can't specify both CNAME for Type and settings for HealthCheckConfig.
If you do, the request will fail with an InvalidInput error.
**SRV**
Route 53 returns the value for an SRV record.
The value for an SRV record uses the following values:
priority weight port service-hostname
Note the following about the values:
+ The values of priority and weight are both set to 1 and can't be changed.
+ The value of port comes from the value that you specify for the AWS_INSTANCE_PORT attribute when you submit a RegisterInstance: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html request.
+ The value of service-hostname is a concatenation of the following values:
+ The value that you specify for InstanceId when you register an instance.
+ The name of the service.
+ The name of the namespace.
For example, if the value of InstanceId is test, the name of the service is backend, and the name of the namespace is example.com, the value of service-hostname is:
test.backend.example.com
If you specify settings for an SRV record and if you specify values for AWS_INSTANCE_IPV4, AWS_INSTANCE_IPV6, or both in the RegisterInstance request, AWS Cloud Map automatically creates A and/or AAAA records that have the same name as the value of service-hostname in the SRV record.
You can ignore these records.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-type
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TTL
The amount of time, in seconds, that you want DNS resolvers to cache the settings for this record.
Alias records don't include a TTL because Route 53 uses the TTL for the AWS resource that an alias record routes traffic to.
If you include the AWS_ALIAS_DNS_NAME attribute when you submit a RegisterInstance: https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html request, the TTL value is ignored.
Always specify a TTL for the service; you can use a service to register instances that create either alias or non-alias records.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-ttl
PrimitiveType: Double
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.ServiceDiscovery.Service.DnsRecord
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html)

