function Add-VSBedrockAgentCoreBrowserCustomBrowserNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::BedrockAgentCore::BrowserCustom.BrowserNetworkConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::BedrockAgentCore::BrowserCustom.BrowserNetworkConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-browsernetworkconfiguration.html

    .PARAMETER VpcConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-browsernetworkconfiguration.html#cfn-bedrockagentcore-browsercustom-browsernetworkconfiguration-vpcconfig
        UpdateType: Immutable
        Type: VpcConfig

    .PARAMETER NetworkMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-browsercustom-browsernetworkconfiguration.html#cfn-bedrockagentcore-browsercustom-browsernetworkconfiguration-networkmode
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.BedrockAgentCore.BrowserCustom.BrowserNetworkConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $VpcConfig,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $NetworkMode

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BedrockAgentCore.BrowserCustom.BrowserNetworkConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
