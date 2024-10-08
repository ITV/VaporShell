function Add-VSBedrockFlowPromptFlowNodeSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.PromptFlowNodeSourceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.PromptFlowNodeSourceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodesourceconfiguration.html

    .PARAMETER Resource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodesourceconfiguration.html#cfn-bedrock-flow-promptflownodesourceconfiguration-resource
        UpdateType: Mutable
        Type: PromptFlowNodeResourceConfiguration

    .PARAMETER Inline
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodesourceconfiguration.html#cfn-bedrock-flow-promptflownodesourceconfiguration-inline
        UpdateType: Mutable
        Type: PromptFlowNodeInlineConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Flow.PromptFlowNodeSourceConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Resource,

        [Parameter(Mandatory = $false)]
        $Inline

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.PromptFlowNodeSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
