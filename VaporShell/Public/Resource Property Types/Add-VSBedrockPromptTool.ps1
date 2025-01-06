function Add-VSBedrockPromptTool {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Prompt.Tool resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Prompt.Tool resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-tool.html

    .PARAMETER ToolSpec
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-tool.html#cfn-bedrock-prompt-tool-toolspec
        UpdateType: Mutable
        Type: ToolSpecification

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Prompt.Tool')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ToolSpec

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Prompt.Tool'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
