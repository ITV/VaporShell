function Add-VSElasticsearchDomainColdStorageOptions {
    <#
    .SYNOPSIS
        Adds an AWS::Elasticsearch::Domain.ColdStorageOptions resource property to the template. Specifies options for cold storage. For more information, see Cold storage for Amazon Elasticsearch Service: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/cold-storage.html.

    .DESCRIPTION
        Adds an AWS::Elasticsearch::Domain.ColdStorageOptions resource property to the template.
Specifies options for cold storage. For more information, see Cold storage for Amazon Elasticsearch Service: https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/cold-storage.html.

**Important**

The AWS::Elasticsearch::Domain resource is being replaced by the AWS::OpenSearchService::Domain: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opensearchservice-domain.html resource. While the legacy Elasticsearch resource and options are still supported, we recommend modifying your existing Cloudformation templates to use the new OpenSearch Service resource, which supports both OpenSearch and Elasticsearch. For more information about the service rename, see New resource types: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/rename.html#rename-resource in the *Amazon OpenSearch Service Developer Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-coldstorageoptions.html

    .PARAMETER Enabled
        Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage in order to enable cold storage.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-coldstorageoptions.html#cfn-elasticsearch-domain-coldstorageoptions-enabled
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Elasticsearch.Domain.ColdStorageOptions')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Elasticsearch.Domain.ColdStorageOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
