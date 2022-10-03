function Add-VSKendraDataSourceDocumentAttributeTarget {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.DocumentAttributeTarget resource property to the template. The target document attribute or metadata field you want to alter when ingesting documents into Amazon Kendra.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.DocumentAttributeTarget resource property to the template.
The target document attribute or metadata field you want to alter when ingesting documents into Amazon Kendra.

For example, you can delete customer identification numbers associated with the documents, stored in the document metadata field called 'Customer_ID'. You set the target key as 'Customer_ID' and the deletion flag to TRUE. This removes all customer ID values in the field 'Customer_ID'. This would scrub personally identifiable information from each document's metadata.

Amazon Kendra cannot create a target field if it has not already been created as an index field. After you create your index field, you can create a document metadata field using DocumentAttributeTarget. Amazon Kendra then will map your newly created metadata field to your index field.

You can also use this with DocumentAttributeCondition: https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeCondition.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html

    .PARAMETER TargetDocumentAttributeKey
        The identifier of the target document attribute or metadata field.
For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html#cfn-kendra-datasource-documentattributetarget-targetdocumentattributekey
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TargetDocumentAttributeValueDeletion
        TRUE to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to TRUE. To create a target value TargetDocumentAttributeValue, set this to FALSE.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html#cfn-kendra-datasource-documentattributetarget-targetdocumentattributevaluedeletion
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER TargetDocumentAttributeValue
        The target value you want to create for the target attribute.
For example, 'Finance' could be the target value for the target attribute key 'Department'.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributetarget.html#cfn-kendra-datasource-documentattributetarget-targetdocumentattributevalue
        UpdateType: Mutable
        Type: DocumentAttributeValue

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.DocumentAttributeTarget')]
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
        $TargetDocumentAttributeKey,
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
        $TargetDocumentAttributeValueDeletion,
        [parameter(Mandatory = $false)]
        $TargetDocumentAttributeValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.DocumentAttributeTarget'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
