function Add-VSBedrockPromptPromptGenAiResource {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Prompt.PromptGenAiResource resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Prompt.PromptGenAiResource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptgenairesource.html

    .PARAMETER Agent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptgenairesource.html#cfn-bedrock-prompt-promptgenairesource-agent
        UpdateType: Mutable
        Type: PromptAgentResource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Prompt.PromptGenAiResource')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Agent

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Prompt.PromptGenAiResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
