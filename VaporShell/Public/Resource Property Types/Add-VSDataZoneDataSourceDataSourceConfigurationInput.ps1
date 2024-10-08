function Add-VSDataZoneDataSourceDataSourceConfigurationInput {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::DataSource.DataSourceConfigurationInput resource property to the template. 

    .DESCRIPTION
        Adds an AWS::DataZone::DataSource.DataSourceConfigurationInput resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html

    .PARAMETER RedshiftRunConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html#cfn-datazone-datasource-datasourceconfigurationinput-redshiftrunconfiguration
        UpdateType: Mutable
        Type: RedshiftRunConfigurationInput

    .PARAMETER GlueRunConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-datasourceconfigurationinput.html#cfn-datazone-datasource-datasourceconfigurationinput-gluerunconfiguration
        UpdateType: Mutable
        Type: GlueRunConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataZone.DataSource.DataSourceConfigurationInput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RedshiftRunConfiguration,
        [parameter(Mandatory = $false)]
        $GlueRunConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.DataSource.DataSourceConfigurationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
