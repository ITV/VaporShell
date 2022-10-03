function Add-VSKendraDataSourceConfluenceBlogConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.ConfluenceBlogConfiguration resource property to the template. Configuration of blog settings for the Confluence data source. Blogs are always indexed unless filtered from the index by the ExclusionPatterns or InclusionPatterns fields in the ConfluenceConfiguration object.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.ConfluenceBlogConfiguration resource property to the template.
Configuration of blog settings for the Confluence data source. Blogs are always indexed unless filtered from the index by the ExclusionPatterns or InclusionPatterns fields in the ConfluenceConfiguration object.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceblogconfiguration.html

    .PARAMETER BlogFieldMappings
        Maps attributes or field names of Confluence blogs to Amazon Kendra index field names. To create custom fields, use the UpdateIndex API before you map to Confluence fields. For more information, see Mapping data source fields: https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html. The Confluence data source field names must exist in your Confluence custom metadata.
If you specify the BlogFieldMappings parameter, you must specify at least one field mapping.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-confluenceblogconfiguration.html#cfn-kendra-datasource-confluenceblogconfiguration-blogfieldmappings
        UpdateType: Mutable
        Type: List
        ItemType: ConfluenceBlogToIndexFieldMapping

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.ConfluenceBlogConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Kendra.DataSource.ConfluenceBlogToIndexFieldMapping"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BlogFieldMappings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.ConfluenceBlogConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
