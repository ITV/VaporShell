function Add-VSDMSDataProviderSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DMS::DataProvider.Settings resource property to the template.

    .DESCRIPTION
        Adds an AWS::DMS::DataProvider.Settings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html

    .PARAMETER MariaDbSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-mariadbsettings
        UpdateType: Mutable
        Type: MariaDbSettings

    .PARAMETER OracleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-oraclesettings
        UpdateType: Mutable
        Type: OracleSettings

    .PARAMETER SybaseAseSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-sybaseasesettings
        UpdateType: Mutable
        Type: SybaseAseSettings

    .PARAMETER MicrosoftSqlServerSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-microsoftsqlserversettings
        UpdateType: Mutable
        Type: MicrosoftSqlServerSettings

    .PARAMETER RedshiftSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-redshiftsettings
        UpdateType: Mutable
        Type: RedshiftSettings

    .PARAMETER IbmDb2zOsSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-ibmdb2zossettings
        UpdateType: Mutable
        Type: IbmDb2zOsSettings

    .PARAMETER MySqlSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-mysqlsettings
        UpdateType: Mutable
        Type: MySqlSettings

    .PARAMETER IbmDb2LuwSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-ibmdb2luwsettings
        UpdateType: Mutable
        Type: IbmDb2LuwSettings

    .PARAMETER DocDbSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-docdbsettings
        UpdateType: Mutable
        Type: DocDbSettings

    .PARAMETER PostgreSqlSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-postgresqlsettings
        UpdateType: Mutable
        Type: PostgreSqlSettings

    .PARAMETER MongoDbSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dms-dataprovider-settings.html#cfn-dms-dataprovider-settings-mongodbsettings
        UpdateType: Mutable
        Type: MongoDbSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DMS.DataProvider.Settings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MariaDbSettings,

        [Parameter(Mandatory = $false)]
        $OracleSettings,

        [Parameter(Mandatory = $false)]
        $SybaseAseSettings,

        [Parameter(Mandatory = $false)]
        $MicrosoftSqlServerSettings,

        [Parameter(Mandatory = $false)]
        $RedshiftSettings,

        [Parameter(Mandatory = $false)]
        $IbmDb2zOsSettings,

        [Parameter(Mandatory = $false)]
        $MySqlSettings,

        [Parameter(Mandatory = $false)]
        $IbmDb2LuwSettings,

        [Parameter(Mandatory = $false)]
        $DocDbSettings,

        [Parameter(Mandatory = $false)]
        $PostgreSqlSettings,

        [Parameter(Mandatory = $false)]
        $MongoDbSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DMS.DataProvider.Settings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
