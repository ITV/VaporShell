function Add-VSDevOpsAgentAssociationServiceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::DevOpsAgent::Association.ServiceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::DevOpsAgent::Association.ServiceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html

    .PARAMETER MCPServer
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-mcpserver
        UpdateType: Mutable
        Type: MCPServerConfiguration

    .PARAMETER EventChannel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-eventchannel
        UpdateType: Mutable
        Type: EventChannelConfiguration

    .PARAMETER ServiceNow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-servicenow
        UpdateType: Mutable
        Type: ServiceNowConfiguration

    .PARAMETER SourceAws
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-sourceaws
        UpdateType: Mutable
        Type: SourceAwsConfiguration

    .PARAMETER Slack
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-slack
        UpdateType: Mutable
        Type: SlackConfiguration

    .PARAMETER GitHub
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-github
        UpdateType: Mutable
        Type: GitHubConfiguration

    .PARAMETER MCPServerDatadog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-mcpserverdatadog
        UpdateType: Mutable
        Type: MCPServerDatadogConfiguration

    .PARAMETER Dynatrace
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-dynatrace
        UpdateType: Mutable
        Type: DynatraceConfiguration

    .PARAMETER MCPServerSplunk
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-mcpserversplunk
        UpdateType: Mutable
        Type: MCPServerSplunkConfiguration

    .PARAMETER Aws
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-aws
        UpdateType: Mutable
        Type: AWSConfiguration

    .PARAMETER MCPServerNewRelic
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-mcpservernewrelic
        UpdateType: Mutable
        Type: MCPServerNewRelicConfiguration

    .PARAMETER GitLab
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsagent-association-serviceconfiguration.html#cfn-devopsagent-association-serviceconfiguration-gitlab
        UpdateType: Mutable
        Type: GitLabConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DevOpsAgent.Association.ServiceConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MCPServer,

        [Parameter(Mandatory = $false)]
        $EventChannel,

        [Parameter(Mandatory = $false)]
        $ServiceNow,

        [Parameter(Mandatory = $false)]
        $SourceAws,

        [Parameter(Mandatory = $false)]
        $Slack,

        [Parameter(Mandatory = $false)]
        $GitHub,

        [Parameter(Mandatory = $false)]
        $MCPServerDatadog,

        [Parameter(Mandatory = $false)]
        $Dynatrace,

        [Parameter(Mandatory = $false)]
        $MCPServerSplunk,

        [Parameter(Mandatory = $false)]
        $Aws,

        [Parameter(Mandatory = $false)]
        $MCPServerNewRelic,

        [Parameter(Mandatory = $false)]
        $GitLab

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DevOpsAgent.Association.ServiceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
