function Add-VSBedrockAgentCoreCodeInterpreterCustomVpcConfig {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::CodeInterpreterCustom.VpcConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::CodeInterpreterCustom.VpcConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-codeinterpretercustom-vpcconfig.html

    .PARAMETER SecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-codeinterpretercustom-vpcconfig.html#cfn-bedrockagentcore-codeinterpretercustom-vpcconfig-securitygroups
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Subnets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-codeinterpretercustom-vpcconfig.html#cfn-bedrockagentcore-codeinterpretercustom-vpcconfig-subnets
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.CodeInterpreterCustom.VpcConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $SecurityGroups,

        [Parameter(Mandatory = $true)]
        $Subnets

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.CodeInterpreterCustom.VpcConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
