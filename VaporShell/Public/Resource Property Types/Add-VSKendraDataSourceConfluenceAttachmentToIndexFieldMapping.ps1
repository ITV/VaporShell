function Add-VSKendraDataSourceConfluenceAttachmentToIndexFieldMapping {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.ConfluenceAttachmentToIndexFieldMapping resource property to the template. Maps attributes or field names of Confluence attachments to Amazon Kendra index field names. To create custom fields, use the UpdateIndex API before you map to Confluence fields. For more information, see Mapping data source fields: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html. The Confuence data source field names must exist in your Confluence custom metadata.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.ConfluenceAttachmentToIndexFieldMapping resource property to the template.
Maps attributes or field names of Confluence attachments to Amazon Kendra index field names. To create custom fields, use the UpdateIndex API before you map to Confluence fields. For more information, see Mapping data source fields: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html. The Confuence data source field names must exist in your Confluence custom metadata.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html

    .PARAMETER DataSourceFieldName
        The name of the field in the data source.
You must first create the index field using the UpdateIndex API.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html#cfn-kendra-datasource-confluenceattachmenttoindexfieldmapping-datasourcefieldname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DateFieldFormat
        The format for date fields in the data source. If the field specified in DataSourceFieldName is a date field you must specify the date format. If the field is not a date field, an exception is thrown.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html#cfn-kendra-datasource-confluenceattachmenttoindexfieldmapping-datefieldformat
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER IndexFieldName
        The name of the index field to map to the Confluence data source field. The index field type must match the Confluence field type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceattachmenttoindexfieldmapping.html#cfn-kendra-datasource-confluenceattachmenttoindexfieldmapping-indexfieldname
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.ConfluenceAttachmentToIndexFieldMapping')]
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
        $DataSourceFieldName,
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
        $DateFieldFormat,
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
        $IndexFieldName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.ConfluenceAttachmentToIndexFieldMapping'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
