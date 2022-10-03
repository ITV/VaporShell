function Add-VSKendraDataSourceDocumentAttributeCondition {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.DocumentAttributeCondition resource property to the template. The condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. You use this with DocumentAttributeTarget to apply the condition: https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeTarget.html.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.DocumentAttributeCondition resource property to the template.
The condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. You use this with DocumentAttributeTarget to apply the condition: https://docs.aws.amazon.com/kendra/latest/dg/API_DocumentAttributeTarget.html.

For example, you can create the 'Department' target field and have it prefill department names associated with the documents based on information in the 'Source_URI' field. Set the condition that if the 'Source_URI' field contains 'financial' in its URI value, then prefill the target field 'Department' with the target value 'Finance' for the document.

Amazon Kendra cannot create a target field if it has not already been created as an index field. After you create your index field, you can create a document metadata field using DocumentAttributeTarget. Amazon Kendra then will map your newly created metadata field to your index field.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html

    .PARAMETER ConditionDocumentAttributeKey
        The identifier of the document attribute used for the condition.
For example, 'Source_URI' could be an identifier for the attribute or metadata field that contains source URIs associated with the documents.
Amazon Kendra currently does not support _document_body as an attribute key used for the condition.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html#cfn-kendra-datasource-documentattributecondition-conditiondocumentattributekey
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Operator
        The condition operator.
For example, you can use 'Contains' to partially match a string.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html#cfn-kendra-datasource-documentattributecondition-operator
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ConditionOnValue
        The value used by the operator.
For example, you can specify the value 'financial' for strings in the 'Source_URI' field that partially match or contain this value.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentattributecondition.html#cfn-kendra-datasource-documentattributecondition-conditiononvalue
        UpdateType: Mutable
        Type: DocumentAttributeValue

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.DocumentAttributeCondition')]
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
        $ConditionDocumentAttributeKey,
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
        $Operator,
        [parameter(Mandatory = $false)]
        $ConditionOnValue
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.DocumentAttributeCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
