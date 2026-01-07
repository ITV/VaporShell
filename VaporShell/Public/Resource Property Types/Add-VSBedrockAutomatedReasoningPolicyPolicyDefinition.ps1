function Add-VSBedrockAutomatedReasoningPolicyPolicyDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::AutomatedReasoningPolicy.PolicyDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html

    .PARAMETER Variables
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-variables
        UpdateType: Mutable
        Type: List
        ItemType: PolicyDefinitionVariable
        DuplicatesAllowed: True

    .PARAMETER Types
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-types
        UpdateType: Mutable
        Type: List
        ItemType: PolicyDefinitionType
        DuplicatesAllowed: True

    .PARAMETER Version
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-version
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Rules
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-automatedreasoningpolicy-policydefinition.html#cfn-bedrock-automatedreasoningpolicy-policydefinition-rules
        UpdateType: Mutable
        Type: List
        ItemType: PolicyDefinitionRule
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.AutomatedReasoningPolicy.PolicyDefinition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionVariable"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Variables,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionType"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Types,

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
        $Version,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.AutomatedReasoningPolicy.PolicyDefinitionRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Rules

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.AutomatedReasoningPolicy.PolicyDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
