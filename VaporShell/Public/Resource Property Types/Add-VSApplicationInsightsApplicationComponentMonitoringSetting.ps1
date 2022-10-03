function Add-VSApplicationInsightsApplicationComponentMonitoringSetting {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationInsights::Application.ComponentMonitoringSetting resource property to the template. The AWS::ApplicationInsights::Application ComponentMonitoringSetting property type defines the monitoring setting of the component.

    .DESCRIPTION
        Adds an AWS::ApplicationInsights::Application.ComponentMonitoringSetting resource property to the template.
The AWS::ApplicationInsights::Application ComponentMonitoringSetting property type defines the monitoring setting of the component.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html

    .PARAMETER ComponentName
        The name of the component.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ComponentARN
        The ARN of the component.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Tier
        The tier of the application component. Supported tiers include DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB, SQL_SERVER, SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP, SQL_SERVER_FAILOVER_CLUSTER_INSTANCE, MYSQL, POSTGRESQL, JAVA_JMX, ORACLE, SAP_HANA_MULTI_NODE, SAP_HANA_SINGLE_NODE, SAP_HANA_HIGH_AVAILABILITY, SHAREPOINT. ACTIVE_DIRECTORY, and DEFAULT.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-tier
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ComponentConfigurationMode
        Component monitoring can be configured in one of the following three modes:
+ DEFAULT: The component will be configured with the recommended default monitoring settings of the selected Tier.
+ CUSTOM: The component will be configured with the customized monitoring settings that are specified in CustomComponentConfiguration. If used, CustomComponentConfiguration must be provided.
+ DEFAULT_WITH_OVERWRITE: The component will be configured with the recommended default monitoring settings of the selected Tier, and merged with customized overwrite settings that are specified in DefaultOverwriteComponentConfiguration. If used, DefaultOverwriteComponentConfiguration must be provided.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentconfigurationmode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DefaultOverwriteComponentConfiguration
        Customized overwrite monitoring settings. Required if CUSTOM mode is configured in ComponentConfigurationMode.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-defaultoverwritecomponentconfiguration
        UpdateType: Mutable
        Type: ComponentConfiguration

    .PARAMETER CustomComponentConfiguration
        Customized monitoring settings. Required if CUSTOM mode is configured in ComponentConfigurationMode.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-customcomponentconfiguration
        UpdateType: Mutable
        Type: ComponentConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ApplicationInsights.Application.ComponentMonitoringSetting')]
    [cmdletbinding()]
    Param
    (
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
        $ComponentName,
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
        $ComponentARN,
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
        $Tier,
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
        $ComponentConfigurationMode,
        [parameter(Mandatory = $false)]
        $DefaultOverwriteComponentConfiguration,
        [parameter(Mandatory = $false)]
        $CustomComponentConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationInsights.Application.ComponentMonitoringSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
