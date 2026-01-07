function Add-VSWisdomAssistantAssociationAssociationData {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::AssistantAssociation.AssociationData resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::AssistantAssociation.AssociationData resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-assistantassociation-associationdata.html

    .PARAMETER ExternalBedrockKnowledgeBaseConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-assistantassociation-associationdata.html#cfn-wisdom-assistantassociation-associationdata-externalbedrockknowledgebaseconfig
        UpdateType: Immutable
        Type: ExternalBedrockKnowledgeBaseConfig

    .PARAMETER KnowledgeBaseId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-assistantassociation-associationdata.html#cfn-wisdom-assistantassociation-associationdata-knowledgebaseid
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.AssistantAssociation.AssociationData')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ExternalBedrockKnowledgeBaseConfig,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KnowledgeBaseId

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.AssistantAssociation.AssociationData'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
