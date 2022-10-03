function Add-VSKinesisAnalyticsV2ApplicationApplicationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalyticsV2::Application.ApplicationConfiguration resource property to the template. Specifies the creation parameters for a Kinesis Data Analytics application.

    .DESCRIPTION
        Adds an AWS::KinesisAnalyticsV2::Application.ApplicationConfiguration resource property to the template.
Specifies the creation parameters for a Kinesis Data Analytics application.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html

    .PARAMETER ApplicationCodeConfiguration
        The code location and type parameters for a Flink-based Kinesis Data Analytics application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-applicationcodeconfiguration
        UpdateType: Mutable
        Type: ApplicationCodeConfiguration

    .PARAMETER ApplicationSnapshotConfiguration
        Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-applicationsnapshotconfiguration
        UpdateType: Mutable
        Type: ApplicationSnapshotConfiguration

    .PARAMETER EnvironmentProperties
        Describes execution properties for a Flink-based Kinesis Data Analytics application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-environmentproperties
        UpdateType: Mutable
        Type: EnvironmentProperties

    .PARAMETER FlinkApplicationConfiguration
        The creation and update parameters for a Flink-based Kinesis Data Analytics application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-flinkapplicationconfiguration
        UpdateType: Mutable
        Type: FlinkApplicationConfiguration

    .PARAMETER SqlApplicationConfiguration
        The creation and update parameters for a SQL-based Kinesis Data Analytics application.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-sqlapplicationconfiguration
        UpdateType: Mutable
        Type: SqlApplicationConfiguration

    .PARAMETER ZeppelinApplicationConfiguration
        The configuration parameters for a Kinesis Data Analytics Studio notebook.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-zeppelinapplicationconfiguration
        UpdateType: Mutable
        Type: ZeppelinApplicationConfiguration

    .PARAMETER VpcConfigurations
        +  ApplicationConfiguration: https://docs.aws.amazon.com/kinesisanalytics/latest/apiv2/API_ApplicationConfiguration.html in the *Amazon Kinesis Data Analytics API Reference*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-vpcconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: VpcConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisAnalyticsV2.Application.ApplicationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ApplicationCodeConfiguration,
        [parameter(Mandatory = $false)]
        $ApplicationSnapshotConfiguration,
        [parameter(Mandatory = $false)]
        $EnvironmentProperties,
        [parameter(Mandatory = $false)]
        $FlinkApplicationConfiguration,
        [parameter(Mandatory = $false)]
        $SqlApplicationConfiguration,
        [parameter(Mandatory = $false)]
        $ZeppelinApplicationConfiguration,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.KinesisAnalyticsV2.Application.VpcConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcConfigurations
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalyticsV2.Application.ApplicationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
