function Add-VSBedrockFlowMetadataConfigurationForReranking {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.MetadataConfigurationForReranking resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.MetadataConfigurationForReranking resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-metadataconfigurationforreranking.html

    .PARAMETER SelectiveModeConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-metadataconfigurationforreranking.html#cfn-bedrock-flow-metadataconfigurationforreranking-selectivemodeconfiguration
        UpdateType: Mutable
        Type: RerankingMetadataSelectiveModeConfiguration

    .PARAMETER SelectionMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-metadataconfigurationforreranking.html#cfn-bedrock-flow-metadataconfigurationforreranking-selectionmode
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Flow.MetadataConfigurationForReranking')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SelectiveModeConfiguration,

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
        $SelectionMode

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.MetadataConfigurationForReranking'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
