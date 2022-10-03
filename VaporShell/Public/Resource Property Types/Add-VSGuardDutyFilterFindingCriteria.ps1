function Add-VSGuardDutyFilterFindingCriteria {
    <#
    .SYNOPSIS
        Adds an AWS::GuardDuty::Filter.FindingCriteria resource property to the template. Represents a map of finding properties that match specified conditions and values when querying findings.

    .DESCRIPTION
        Adds an AWS::GuardDuty::Filter.FindingCriteria resource property to the template.
Represents a map of finding properties that match specified conditions and values when querying findings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html

    .PARAMETER Criterion
        Represents a map of finding properties that match specified conditions and values when querying findings.
For a mapping of JSON criterion to their console equivalent see Finding criteria: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_filter-findings.html#filter_criteria. The following are the available criterion:
+ accountId
+ region
+ confidence
+ id
+ resource.accessKeyDetails.accessKeyId
+ resource.accessKeyDetails.principalId
+ resource.accessKeyDetails.userName
+ resource.accessKeyDetails.userType
+ resource.instanceDetails.iamInstanceProfile.id
+ resource.instanceDetails.imageId
+ resource.instanceDetails.instanceId
+ resource.instanceDetails.outpostArn
+ resource.instanceDetails.networkInterfaces.ipv6Addresses
+ resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress
+ resource.instanceDetails.networkInterfaces.publicDnsName
+ resource.instanceDetails.networkInterfaces.publicIp
+ resource.instanceDetails.networkInterfaces.securityGroups.groupId
+ resource.instanceDetails.networkInterfaces.securityGroups.groupName
+ resource.instanceDetails.networkInterfaces.subnetId
+ resource.instanceDetails.networkInterfaces.vpcId
+ resource.instanceDetails.tags.key
+ resource.instanceDetails.tags.value
+ resource.resourceType
+ service.action.actionType
+ service.action.awsApiCallAction.api
+ service.action.awsApiCallAction.callerType
+ service.action.awsApiCallAction.errorCode
+ service.action.awsApiCallAction.remoteIpDetails.city.cityName
+ service.action.awsApiCallAction.remoteIpDetails.country.countryName
+ service.action.awsApiCallAction.remoteIpDetails.ipAddressV4
+ service.action.awsApiCallAction.remoteIpDetails.organization.asn
+ service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg
+ service.action.awsApiCallAction.serviceName
+ service.action.dnsRequestAction.domain
+ service.action.networkConnectionAction.blocked
+ service.action.networkConnectionAction.connectionDirection
+ service.action.networkConnectionAction.localPortDetails.port
+ service.action.networkConnectionAction.protocol
+ service.action.networkConnectionAction.localIpDetails.ipAddressV4
+ service.action.networkConnectionAction.remoteIpDetails.city.cityName
+ service.action.networkConnectionAction.remoteIpDetails.country.countryName
+ service.action.networkConnectionAction.remoteIpDetails.ipAddressV4
+ service.action.networkConnectionAction.remoteIpDetails.organization.asn
+ service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg
+ service.action.networkConnectionAction.remotePortDetails.port
+ service.additionalInfo.threatListName
+ service.archived
When this attribute is set to TRUE, only archived findings are listed. When it's set to FALSE, only unarchived findings are listed. When this attribute is not set, all existing findings are listed.
+ service.resourceRole
+ severity
+ type
+ updatedAt
Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains milliseconds.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-criterion
        PrimitiveType: Json
        UpdateType: Mutable

    .PARAMETER ItemType
        Specifies the condition to be applied to a single field when filtering through findings.

        Type: Condition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-itemtype
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GuardDuty.Filter.FindingCriteria')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Criterion,
        [parameter(Mandatory = $false)]
        $ItemType
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Criterion {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GuardDuty.Filter.FindingCriteria'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
