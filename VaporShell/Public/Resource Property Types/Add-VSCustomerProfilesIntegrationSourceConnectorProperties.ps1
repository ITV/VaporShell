function Add-VSCustomerProfilesIntegrationSourceConnectorProperties {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::Integration.SourceConnectorProperties resource property to the template. <a name="aws-properties-customerprofiles-integration-sourceconnectorproperties-description"></a>The SourceConnectorProperties property type specifies Not currently supported by AWS CloudFormation. for an AWS::CustomerProfiles::Integration: aws-resource-customerprofiles-integration.md.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::Integration.SourceConnectorProperties resource property to the template.
<a name="aws-properties-customerprofiles-integration-sourceconnectorproperties-description"></a>The SourceConnectorProperties property type specifies Not currently supported by AWS CloudFormation. for an AWS::CustomerProfiles::Integration: aws-resource-customerprofiles-integration.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html

    .PARAMETER Marketo
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-marketo
        UpdateType: Mutable
        Type: MarketoSourceProperties

    .PARAMETER S3
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-s3
        UpdateType: Mutable
        Type: S3SourceProperties

    .PARAMETER Salesforce
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-salesforce
        UpdateType: Mutable
        Type: SalesforceSourceProperties

    .PARAMETER ServiceNow
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-servicenow
        UpdateType: Mutable
        Type: ServiceNowSourceProperties

    .PARAMETER Zendesk
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-sourceconnectorproperties.html#cfn-customerprofiles-integration-sourceconnectorproperties-zendesk
        UpdateType: Mutable
        Type: ZendeskSourceProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CustomerProfiles.Integration.SourceConnectorProperties')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Marketo,
        [parameter(Mandatory = $false)]
        $S3,
        [parameter(Mandatory = $false)]
        $Salesforce,
        [parameter(Mandatory = $false)]
        $ServiceNow,
        [parameter(Mandatory = $false)]
        $Zendesk
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.Integration.SourceConnectorProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
