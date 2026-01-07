function Add-VSBedrockAgentCoreRuntimeCode {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::Runtime.Code resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::Runtime.Code resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-code.html

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-runtime-code.html#cfn-bedrockagentcore-runtime-code-s3
        UpdateType: Mutable
        Type: S3Location

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.Runtime.Code')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.Runtime.Code'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
