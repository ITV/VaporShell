function Add-VSKendraDataSourceInlineCustomDocumentEnrichmentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.InlineCustomDocumentEnrichmentConfiguration resource property to the template. Provides the configuration information for applying basic logic to alter document metadata and content when ingesting documents into Amazon Kendra. To apply advanced logic, to go beyond what you can do with basic logic, see HookConfiguration: https://docs.aws.amazon.com/kendra/latest/dg/API_HookConfiguration.html.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.InlineCustomDocumentEnrichmentConfiguration resource property to the template.
Provides the configuration information for applying basic logic to alter document metadata and content when ingesting documents into Amazon Kendra. To apply advanced logic, to go beyond what you can do with basic logic, see HookConfiguration: https://docs.aws.amazon.com/kendra/latest/dg/API_HookConfiguration.html.

For more information, see Customizing document metadata during the ingestion process: https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-inlinecustomdocumentenrichmentconfiguration.html

    .PARAMETER Condition
        Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-inlinecustomdocumentenrichmentconfiguration.html#cfn-kendra-datasource-inlinecustomdocumentenrichmentconfiguration-condition
        UpdateType: Mutable
        Type: DocumentAttributeCondition

    .PARAMETER Target
        Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-inlinecustomdocumentenrichmentconfiguration.html#cfn-kendra-datasource-inlinecustomdocumentenrichmentconfiguration-target
        UpdateType: Mutable
        Type: DocumentAttributeTarget

    .PARAMETER DocumentContentDeletion
        TRUE to delete content if the condition used for the target attribute is met.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-inlinecustomdocumentenrichmentconfiguration.html#cfn-kendra-datasource-inlinecustomdocumentenrichmentconfiguration-documentcontentdeletion
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.InlineCustomDocumentEnrichmentConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Condition,
        [parameter(Mandatory = $false)]
        $Target,
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
        $DocumentContentDeletion
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.InlineCustomDocumentEnrichmentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
