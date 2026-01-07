function Add-VSBedrockFlowVersionLoopFlowNodeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::FlowVersion.LoopFlowNodeConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::FlowVersion.LoopFlowNodeConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-loopflownodeconfiguration.html

    .PARAMETER Definition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-loopflownodeconfiguration.html#cfn-bedrock-flowversion-loopflownodeconfiguration-definition
        UpdateType: Mutable
        Type: FlowDefinition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.FlowVersion.LoopFlowNodeConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Definition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.FlowVersion.LoopFlowNodeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
