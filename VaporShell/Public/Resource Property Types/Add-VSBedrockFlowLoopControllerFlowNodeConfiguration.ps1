function Add-VSBedrockFlowLoopControllerFlowNodeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.LoopControllerFlowNodeConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.LoopControllerFlowNodeConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopcontrollerflownodeconfiguration.html

    .PARAMETER ContinueCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopcontrollerflownodeconfiguration.html#cfn-bedrock-flow-loopcontrollerflownodeconfiguration-continuecondition
        UpdateType: Mutable
        Type: FlowCondition

    .PARAMETER MaxIterations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-loopcontrollerflownodeconfiguration.html#cfn-bedrock-flow-loopcontrollerflownodeconfiguration-maxiterations
        UpdateType: Mutable
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Flow.LoopControllerFlowNodeConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ContinueCondition,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxIterations

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.LoopControllerFlowNodeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
