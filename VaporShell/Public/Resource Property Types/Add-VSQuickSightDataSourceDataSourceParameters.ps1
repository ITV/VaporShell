function Add-VSQuickSightDataSourceDataSourceParameters {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSource.DataSourceParameters resource property to the template. The parameters that Amazon QuickSight uses to connect to your underlying data source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSource.DataSourceParameters resource property to the template.
The parameters that Amazon QuickSight uses to connect to your underlying data source. This is a variant type structure. For this structure to be valid, only one of the attributes can be non-null.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html

    .PARAMETER AuroraPostgreSqlParameters
        The parameters for Amazon Aurora.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-aurorapostgresqlparameters
        UpdateType: Mutable
        Type: AuroraPostgreSqlParameters

    .PARAMETER TeradataParameters
        The parameters for Teradata.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-teradataparameters
        UpdateType: Mutable
        Type: TeradataParameters

    .PARAMETER RdsParameters
        The parameters for Amazon RDS.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-rdsparameters
        UpdateType: Mutable
        Type: RdsParameters

    .PARAMETER AthenaParameters
        The parameters for Amazon Athena.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-athenaparameters
        UpdateType: Mutable
        Type: AthenaParameters

    .PARAMETER SparkParameters
        The parameters for Spark.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-sparkparameters
        UpdateType: Mutable
        Type: SparkParameters

    .PARAMETER MariaDbParameters
        The parameters for MariaDB.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-mariadbparameters
        UpdateType: Mutable
        Type: MariaDbParameters

    .PARAMETER OracleParameters
        Oracle parameters.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-oracleparameters
        UpdateType: Mutable
        Type: OracleParameters

    .PARAMETER PrestoParameters
        The parameters for Presto.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-prestoparameters
        UpdateType: Mutable
        Type: PrestoParameters

    .PARAMETER RedshiftParameters
        The parameters for Amazon Redshift.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-redshiftparameters
        UpdateType: Mutable
        Type: RedshiftParameters

    .PARAMETER MySqlParameters
        The parameters for MySQL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-mysqlparameters
        UpdateType: Mutable
        Type: MySqlParameters

    .PARAMETER SqlServerParameters
        The parameters for SQL Server.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-sqlserverparameters
        UpdateType: Mutable
        Type: SqlServerParameters

    .PARAMETER SnowflakeParameters
        The parameters for Snowflake.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-snowflakeparameters
        UpdateType: Mutable
        Type: SnowflakeParameters

    .PARAMETER AmazonElasticsearchParameters
        The parameters for OpenSearch.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-amazonelasticsearchparameters
        UpdateType: Mutable
        Type: AmazonElasticsearchParameters

    .PARAMETER AmazonOpenSearchParameters
        The parameters for OpenSearch.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-amazonopensearchparameters
        UpdateType: Mutable
        Type: AmazonOpenSearchParameters

    .PARAMETER PostgreSqlParameters
        The parameters for PostgreSQL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-postgresqlparameters
        UpdateType: Mutable
        Type: PostgreSqlParameters

    .PARAMETER AuroraParameters
        The parameters for Amazon Aurora MySQL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-auroraparameters
        UpdateType: Mutable
        Type: AuroraParameters

    .PARAMETER S3Parameters
        The parameters for S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-s3parameters
        UpdateType: Mutable
        Type: S3Parameters

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.DataSource.DataSourceParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AuroraPostgreSqlParameters,
        [parameter(Mandatory = $false)]
        $TeradataParameters,
        [parameter(Mandatory = $false)]
        $RdsParameters,
        [parameter(Mandatory = $false)]
        $AthenaParameters,
        [parameter(Mandatory = $false)]
        $SparkParameters,
        [parameter(Mandatory = $false)]
        $MariaDbParameters,
        [parameter(Mandatory = $false)]
        $OracleParameters,
        [parameter(Mandatory = $false)]
        $PrestoParameters,
        [parameter(Mandatory = $false)]
        $RedshiftParameters,
        [parameter(Mandatory = $false)]
        $MySqlParameters,
        [parameter(Mandatory = $false)]
        $SqlServerParameters,
        [parameter(Mandatory = $false)]
        $SnowflakeParameters,
        [parameter(Mandatory = $false)]
        $AmazonElasticsearchParameters,
        [parameter(Mandatory = $false)]
        $AmazonOpenSearchParameters,
        [parameter(Mandatory = $false)]
        $PostgreSqlParameters,
        [parameter(Mandatory = $false)]
        $AuroraParameters,
        [parameter(Mandatory = $false)]
        $S3Parameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSource.DataSourceParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
