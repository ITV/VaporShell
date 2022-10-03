function Add-VSOpenSearchServiceDomainLogPublishingOption {
    <#
    .SYNOPSIS
        Adds an AWS::OpenSearchService::Domain.LogPublishingOption resource property to the template. Specifies whether the OpenSearch Service domain publishes application, search slow logs, or index slow logs to Amazon CloudWatch. Each option must be an object of name SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, INDEX_SLOW_LOGS, or AUDIT_LOGS depending on the type of logs you want to publish. For the full syntax, see the examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchservice-domain.html#aws-resource-opensearchservice-domain--examples.

    .DESCRIPTION
        Adds an AWS::OpenSearchService::Domain.LogPublishingOption resource property to the template.
Specifies whether the OpenSearch Service domain publishes application, search slow logs, or index slow logs to Amazon CloudWatch. Each option must be an object of name SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS, INDEX_SLOW_LOGS, or AUDIT_LOGS depending on the type of logs you want to publish. For the full syntax, see the examples: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchservice-domain.html#aws-resource-opensearchservice-domain--examples.

Before you enable log publishing, you need to create a CloudWatch log group and provide OpenSearch Service the correct permissions to write to it. To learn more, see Enabling log publishing (AWS CloudFormation: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createdomain-configure-slow-logs.html#createdomain-configure-slow-logs-cfn.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-logpublishingoption.html

    .PARAMETER CloudWatchLogsLogGroupArn
        Specifies the CloudWatch log group to publish to. Required if you enable log publishing.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-logpublishingoption.html#cfn-opensearchservice-domain-logpublishingoption-cloudwatchlogsloggrouparn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Enabled
        If true, enables the publishing of logs to CloudWatch.
Default: false.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-logpublishingoption.html#cfn-opensearchservice-domain-logpublishingoption-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.OpenSearchService.Domain.LogPublishingOption')]
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
        $CloudWatchLogsLogGroupArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.OpenSearchService.Domain.LogPublishingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
