function Add-VSKendraDataSourceDatabaseConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.DatabaseConfiguration resource property to the template. Provides the configuration information to connect to a index.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.DatabaseConfiguration resource property to the template.
Provides the configuration information to connect to a index.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html

    .PARAMETER DatabaseEngineType
        The type of database engine that runs the database.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-databaseenginetype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ConnectionConfiguration
        Configuration information that's required to connect to a database.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-connectionconfiguration
        UpdateType: Mutable
        Type: ConnectionConfiguration

    .PARAMETER VpcConfiguration
        Provides information for connecting to an Amazon VPC.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-vpcconfiguration
        UpdateType: Mutable
        Type: DataSourceVpcConfiguration

    .PARAMETER ColumnConfiguration
        Information about where the index should get the document information from the database.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-columnconfiguration
        UpdateType: Mutable
        Type: ColumnConfiguration

    .PARAMETER AclConfiguration
        Information about the database column that provides information for user context filtering.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-aclconfiguration
        UpdateType: Mutable
        Type: AclConfiguration

    .PARAMETER SqlConfiguration
        Provides information about how Amazon Kendra uses quote marks around SQL identifiers when querying a database data source.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-databaseconfiguration.html#cfn-kendra-datasource-databaseconfiguration-sqlconfiguration
        UpdateType: Mutable
        Type: SqlConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Kendra.DataSource.DatabaseConfiguration')]
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
        $DatabaseEngineType,
        [parameter(Mandatory = $true)]
        $ConnectionConfiguration,
        [parameter(Mandatory = $false)]
        $VpcConfiguration,
        [parameter(Mandatory = $true)]
        $ColumnConfiguration,
        [parameter(Mandatory = $false)]
        $AclConfiguration,
        [parameter(Mandatory = $false)]
        $SqlConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.DatabaseConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
