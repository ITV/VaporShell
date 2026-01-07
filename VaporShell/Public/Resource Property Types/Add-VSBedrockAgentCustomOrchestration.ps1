function Add-VSBedrockAgentCustomOrchestration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Agent.CustomOrchestration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Agent.CustomOrchestration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-customorchestration.html

    .PARAMETER Executor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-customorchestration.html#cfn-bedrock-agent-customorchestration-executor
        UpdateType: Mutable
        Type: OrchestrationExecutor

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Agent.CustomOrchestration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Executor

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Agent.CustomOrchestration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
