function Add-VSWisdomAIAgentEmailGenerativeAnswerAIAgentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::AIAgent.EmailGenerativeAnswerAIAgentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::AIAgent.EmailGenerativeAnswerAIAgentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-emailgenerativeansweraiagentconfiguration.html

    .PARAMETER EmailGenerativeAnswerAIPromptId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-emailgenerativeansweraiagentconfiguration.html#cfn-wisdom-aiagent-emailgenerativeansweraiagentconfiguration-emailgenerativeansweraipromptid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Locale
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-emailgenerativeansweraiagentconfiguration.html#cfn-wisdom-aiagent-emailgenerativeansweraiagentconfiguration-locale
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER EmailQueryReformulationAIPromptId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-emailgenerativeansweraiagentconfiguration.html#cfn-wisdom-aiagent-emailgenerativeansweraiagentconfiguration-emailqueryreformulationaipromptid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AssociationConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiagent-emailgenerativeansweraiagentconfiguration.html#cfn-wisdom-aiagent-emailgenerativeansweraiagentconfiguration-associationconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: AssociationConfiguration
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.AIAgent.EmailGenerativeAnswerAIAgentConfiguration')]
    [CmdletBinding()]

    Param
    (
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
        $EmailGenerativeAnswerAIPromptId,

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
        $Locale,

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
        $EmailQueryReformulationAIPromptId,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Wisdom.AIAgent.AssociationConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AssociationConfigurations

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.AIAgent.EmailGenerativeAnswerAIAgentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
