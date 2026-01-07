function Add-VSWisdomAIAgentAIAgentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::AIAgent.AIAgentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::AIAgent.AIAgentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html

    .PARAMETER ManualSearchAIAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-manualsearchaiagentconfiguration
        UpdateType: Mutable
        Type: ManualSearchAIAgentConfiguration

    .PARAMETER EmailOverviewAIAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-emailoverviewaiagentconfiguration
        UpdateType: Mutable
        Type: EmailOverviewAIAgentConfiguration

    .PARAMETER SelfServiceAIAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-selfserviceaiagentconfiguration
        UpdateType: Mutable
        Type: SelfServiceAIAgentConfiguration

    .PARAMETER EmailResponseAIAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-emailresponseaiagentconfiguration
        UpdateType: Mutable
        Type: EmailResponseAIAgentConfiguration

    .PARAMETER AnswerRecommendationAIAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-answerrecommendationaiagentconfiguration
        UpdateType: Mutable
        Type: AnswerRecommendationAIAgentConfiguration

    .PARAMETER EmailGenerativeAnswerAIAgentConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-aiagentconfiguration.html#cfn-wisdom-aiagent-aiagentconfiguration-emailgenerativeansweraiagentconfiguration
        UpdateType: Mutable
        Type: EmailGenerativeAnswerAIAgentConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.AIAgent.AIAgentConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ManualSearchAIAgentConfiguration,

        [Parameter(Mandatory = $false)]
        $EmailOverviewAIAgentConfiguration,

        [Parameter(Mandatory = $false)]
        $SelfServiceAIAgentConfiguration,

        [Parameter(Mandatory = $false)]
        $EmailResponseAIAgentConfiguration,

        [Parameter(Mandatory = $false)]
        $AnswerRecommendationAIAgentConfiguration,

        [Parameter(Mandatory = $false)]
        $EmailGenerativeAnswerAIAgentConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.AIAgent.AIAgentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
