function Add-VSWisdomKnowledgeBaseAppIntegrationsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::KnowledgeBase.AppIntegrationsConfiguration resource property to the template. Configuration information for Amazon AppIntegrations to automatically ingest content.

    .DESCRIPTION
        Adds an AWS::Wisdom::KnowledgeBase.AppIntegrationsConfiguration resource property to the template.
Configuration information for Amazon AppIntegrations to automatically ingest content.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-appintegrationsconfiguration.html

    .PARAMETER ObjectFields
        The fields from the source that are made available to your agents in Wisdom.
+  For  Salesforce: https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm, you must include at least Id, ArticleNumber, VersionNumber, Title, PublishStatus, and IsDeleted.
+ For  ServiceNow: https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api, you must include at least number, short_description, sys_mod_count, workflow_state, and active.
Make sure to include additional fields. These fields are indexed and used to source recommendations.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-appintegrationsconfiguration.html#cfn-wisdom-knowledgebase-appintegrationsconfiguration-objectfields
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER AppIntegrationArn
        The Amazon Resource Name ARN of the AppIntegrations DataIntegration to use for ingesting content.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-appintegrationsconfiguration.html#cfn-wisdom-knowledgebase-appintegrationsconfiguration-appintegrationarn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Wisdom.KnowledgeBase.AppIntegrationsConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $ObjectFields,
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
        $AppIntegrationArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.KnowledgeBase.AppIntegrationsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
