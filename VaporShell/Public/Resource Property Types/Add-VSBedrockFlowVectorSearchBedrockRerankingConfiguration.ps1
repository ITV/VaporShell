function Add-VSBedrockFlowVectorSearchBedrockRerankingConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.VectorSearchBedrockRerankingConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.VectorSearchBedrockRerankingConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingconfiguration.html

    .PARAMETER NumberOfRerankedResults
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingconfiguration.html#cfn-bedrock-flow-vectorsearchbedrockrerankingconfiguration-numberofrerankedresults
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER MetadataConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingconfiguration.html#cfn-bedrock-flow-vectorsearchbedrockrerankingconfiguration-metadataconfiguration
        UpdateType: Mutable
        Type: MetadataConfigurationForReranking

    .PARAMETER ModelConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingconfiguration.html#cfn-bedrock-flow-vectorsearchbedrockrerankingconfiguration-modelconfiguration
        UpdateType: Mutable
        Type: VectorSearchBedrockRerankingModelConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Flow.VectorSearchBedrockRerankingConfiguration')]
    [CmdletBinding()]

    Param
    (
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
        $NumberOfRerankedResults,

        [Parameter(Mandatory = $false)]
        $MetadataConfiguration,

        [Parameter(Mandatory = $true)]
        $ModelConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.VectorSearchBedrockRerankingConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
