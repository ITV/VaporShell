function Add-VSWisdomKnowledgeBaseBedrockFoundationModelConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::KnowledgeBase.BedrockFoundationModelConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::KnowledgeBase.BedrockFoundationModelConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-bedrockfoundationmodelconfiguration.html

    .PARAMETER ModelArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-bedrockfoundationmodelconfiguration.html#cfn-wisdom-knowledgebase-bedrockfoundationmodelconfiguration-modelarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ParsingPrompt
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-bedrockfoundationmodelconfiguration.html#cfn-wisdom-knowledgebase-bedrockfoundationmodelconfiguration-parsingprompt
        UpdateType: Mutable
        Type: ParsingPrompt

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.KnowledgeBase.BedrockFoundationModelConfiguration')]
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
        $ModelArn,

        [Parameter(Mandatory = $false)]
        $ParsingPrompt

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.KnowledgeBase.BedrockFoundationModelConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
