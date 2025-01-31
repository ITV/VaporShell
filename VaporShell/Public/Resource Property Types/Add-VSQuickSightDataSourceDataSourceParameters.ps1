function Add-VSQuickSightDataSourceDataSourceParameters {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSource.DataSourceParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSource.DataSourceParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html

    .PARAMETER AuroraPostgreSqlParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-aurorapostgresqlparameters
        UpdateType: Mutable
        Type: AuroraPostgreSqlParameters

    .PARAMETER TeradataParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-teradataparameters
        UpdateType: Mutable
        Type: TeradataParameters

    .PARAMETER RdsParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-rdsparameters
        UpdateType: Mutable
        Type: RdsParameters

    .PARAMETER AthenaParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-athenaparameters
        UpdateType: Mutable
        Type: AthenaParameters

    .PARAMETER SparkParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-sparkparameters
        UpdateType: Mutable
        Type: SparkParameters

    .PARAMETER MariaDbParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-mariadbparameters
        UpdateType: Mutable
        Type: MariaDbParameters

    .PARAMETER OracleParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-oracleparameters
        UpdateType: Mutable
        Type: OracleParameters

    .PARAMETER PrestoParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-prestoparameters
        UpdateType: Mutable
        Type: PrestoParameters

    .PARAMETER StarburstParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-starburstparameters
        UpdateType: Mutable
        Type: StarburstParameters

    .PARAMETER RedshiftParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-redshiftparameters
        UpdateType: Mutable
        Type: RedshiftParameters

    .PARAMETER MySqlParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-mysqlparameters
        UpdateType: Mutable
        Type: MySqlParameters

    .PARAMETER SqlServerParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-sqlserverparameters
        UpdateType: Mutable
        Type: SqlServerParameters

    .PARAMETER SnowflakeParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-snowflakeparameters
        UpdateType: Mutable
        Type: SnowflakeParameters

    .PARAMETER AmazonElasticsearchParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-amazonelasticsearchparameters
        UpdateType: Mutable
        Type: AmazonElasticsearchParameters

    .PARAMETER AmazonOpenSearchParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-amazonopensearchparameters
        UpdateType: Mutable
        Type: AmazonOpenSearchParameters

    .PARAMETER PostgreSqlParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-postgresqlparameters
        UpdateType: Mutable
        Type: PostgreSqlParameters

    .PARAMETER AuroraParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-auroraparameters
        UpdateType: Mutable
        Type: AuroraParameters

    .PARAMETER S3Parameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-s3parameters
        UpdateType: Mutable
        Type: S3Parameters

    .PARAMETER TrinoParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-trinoparameters
        UpdateType: Mutable
        Type: TrinoParameters

    .PARAMETER DatabricksParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-datasourceparameters.html#cfn-quicksight-datasource-datasourceparameters-databricksparameters
        UpdateType: Mutable
        Type: DatabricksParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSource.DataSourceParameters')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AuroraPostgreSqlParameters,

        [Parameter(Mandatory = $false)]
        $TeradataParameters,

        [Parameter(Mandatory = $false)]
        $RdsParameters,

        [Parameter(Mandatory = $false)]
        $AthenaParameters,

        [Parameter(Mandatory = $false)]
        $SparkParameters,

        [Parameter(Mandatory = $false)]
        $MariaDbParameters,

        [Parameter(Mandatory = $false)]
        $OracleParameters,

        [Parameter(Mandatory = $false)]
        $PrestoParameters,

        [Parameter(Mandatory = $false)]
        $StarburstParameters,

        [Parameter(Mandatory = $false)]
        $RedshiftParameters,

        [Parameter(Mandatory = $false)]
        $MySqlParameters,

        [Parameter(Mandatory = $false)]
        $SqlServerParameters,

        [Parameter(Mandatory = $false)]
        $SnowflakeParameters,

        [Parameter(Mandatory = $false)]
        $AmazonElasticsearchParameters,

        [Parameter(Mandatory = $false)]
        $AmazonOpenSearchParameters,

        [Parameter(Mandatory = $false)]
        $PostgreSqlParameters,

        [Parameter(Mandatory = $false)]
        $AuroraParameters,

        [Parameter(Mandatory = $false)]
        $S3Parameters,

        [Parameter(Mandatory = $false)]
        $TrinoParameters,

        [Parameter(Mandatory = $false)]
        $DatabricksParameters

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
