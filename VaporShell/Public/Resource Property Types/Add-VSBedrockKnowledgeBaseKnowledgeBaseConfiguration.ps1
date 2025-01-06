function Add-VSBedrockKnowledgeBaseKnowledgeBaseConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::KnowledgeBase.KnowledgeBaseConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::KnowledgeBase.KnowledgeBaseConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html

    .PARAMETER Type
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-type
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER KendraKnowledgeBaseConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-kendraknowledgebaseconfiguration
        UpdateType: Immutable
        Type: KendraKnowledgeBaseConfiguration

    .PARAMETER VectorKnowledgeBaseConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-knowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-knowledgebaseconfiguration-vectorknowledgebaseconfiguration
        UpdateType: Immutable
        Type: VectorKnowledgeBaseConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.KnowledgeBase.KnowledgeBaseConfiguration')]
    [cmdletbinding()]

    Param
    (
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
        $Type,

        [Parameter(Mandatory = $false)]
        $KendraKnowledgeBaseConfiguration,

        [Parameter(Mandatory = $false)]
        $VectorKnowledgeBaseConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.KnowledgeBase.KnowledgeBaseConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
