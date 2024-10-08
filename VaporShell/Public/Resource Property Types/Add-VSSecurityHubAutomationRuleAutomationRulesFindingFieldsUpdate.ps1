function Add-VSSecurityHubAutomationRuleAutomationRulesFindingFieldsUpdate {
    <#
    .SYNOPSIS
        Adds an AWS::SecurityHub::AutomationRule.AutomationRulesFindingFieldsUpdate resource property to the template.

    .DESCRIPTION
        Adds an AWS::SecurityHub::AutomationRule.AutomationRulesFindingFieldsUpdate resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html

    .PARAMETER Types
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-types
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Confidence
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-confidence
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Note
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-note
        UpdateType: Mutable
        Type: NoteUpdate

    .PARAMETER VerificationState
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-verificationstate
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RelatedFindings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-relatedfindings
        UpdateType: Mutable
        Type: List
        ItemType: RelatedFinding
        DuplicatesAllowed: True

    .PARAMETER Workflow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-workflow
        UpdateType: Mutable
        Type: WorkflowUpdate

    .PARAMETER Severity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-severity
        UpdateType: Mutable
        Type: SeverityUpdate

    .PARAMETER UserDefinedFields
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-userdefinedfields
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Criticality
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrule-automationrulesfindingfieldsupdate.html#cfn-securityhub-automationrule-automationrulesfindingfieldsupdate-criticality
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SecurityHub.AutomationRule.AutomationRulesFindingFieldsUpdate')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Types,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Confidence,

        [Parameter(Mandatory = $false)]
        $Note,

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
        $VerificationState,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SecurityHub.AutomationRule.RelatedFinding"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RelatedFindings,

        [Parameter(Mandatory = $false)]
        $Workflow,

        [Parameter(Mandatory = $false)]
        $Severity,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $UserDefinedFields,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Criticality

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecurityHub.AutomationRule.AutomationRulesFindingFieldsUpdate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
