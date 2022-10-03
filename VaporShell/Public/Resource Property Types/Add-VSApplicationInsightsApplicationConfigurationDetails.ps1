function Add-VSApplicationInsightsApplicationConfigurationDetails {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationInsights::Application.ConfigurationDetails resource property to the template. The AWS::ApplicationInsights::Application ConfigurationDetails property type specifies the configuration settings.

    .DESCRIPTION
        Adds an AWS::ApplicationInsights::Application.ConfigurationDetails resource property to the template.
The AWS::ApplicationInsights::Application ConfigurationDetails property type specifies the configuration settings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html

    .PARAMETER AlarmMetrics
        A list of metrics to monitor for the component. All component types can use AlarmMetrics.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-alarmmetrics
        UpdateType: Mutable
        Type: List
        ItemType: AlarmMetric

    .PARAMETER Logs
        A list of logs to monitor for the component. Only Amazon EC2 instances can use Logs.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-logs
        UpdateType: Mutable
        Type: List
        ItemType: Log

    .PARAMETER WindowsEvents
        A list of Windows Events to monitor for the component. Only Amazon EC2 instances running on Windows can use WindowsEvents.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-windowsevents
        UpdateType: Mutable
        Type: List
        ItemType: WindowsEvent

    .PARAMETER Alarms
        A list of alarms to monitor for the component. All component types can use Alarm.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-alarms
        UpdateType: Mutable
        Type: List
        ItemType: Alarm

    .PARAMETER JMXPrometheusExporter
        A list of Java metrics to monitor for the component.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-jmxprometheusexporter
        UpdateType: Mutable
        Type: JMXPrometheusExporter

    .PARAMETER HANAPrometheusExporter
        The HANA DB Prometheus Exporter settings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-hanaprometheusexporter
        UpdateType: Mutable
        Type: HANAPrometheusExporter

    .PARAMETER HAClusterPrometheusExporter
        The HA cluster Prometheus Exporter settings.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-haclusterprometheusexporter
        UpdateType: Mutable
        Type: HAClusterPrometheusExporter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApplicationInsights.Application.ConfigurationDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApplicationInsights.Application.AlarmMetric"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AlarmMetrics,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApplicationInsights.Application.Log"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Logs,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApplicationInsights.Application.WindowsEvent"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $WindowsEvents,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApplicationInsights.Application.Alarm"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Alarms,
        [parameter(Mandatory = $false)]
        $JMXPrometheusExporter,
        [parameter(Mandatory = $false)]
        $HANAPrometheusExporter,
        [parameter(Mandatory = $false)]
        $HAClusterPrometheusExporter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationInsights.Application.ConfigurationDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
