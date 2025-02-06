function Add-VSBedrockPromptVersionPromptGenAiResource {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::PromptVersion.PromptGenAiResource resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::PromptVersion.PromptGenAiResource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptgenairesource.html

    .PARAMETER Agent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptgenairesource.html#cfn-bedrock-promptversion-promptgenairesource-agent
        UpdateType: Mutable
        Type: PromptAgentResource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.PromptVersion.PromptGenAiResource')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.PromptVersion.PromptGenAiResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
