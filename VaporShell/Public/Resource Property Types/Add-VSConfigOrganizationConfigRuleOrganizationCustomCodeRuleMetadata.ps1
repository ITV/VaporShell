function Add-VSConfigOrganizationConfigRuleOrganizationCustomCodeRuleMetadata {
    <#
    .SYNOPSIS
        Adds an AWS::Config::OrganizationConfigRule.OrganizationCustomCodeRuleMetadata resource property to the template. <a name="aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata-description"></a>The OrganizationCustomCodeRuleMetadata property type specifies Not currently supported by AWS CloudFormation. for an AWS::Config::OrganizationConfigRule: aws-resource-config-organizationconfigrule.md.

    .DESCRIPTION
        Adds an AWS::Config::OrganizationConfigRule.OrganizationCustomCodeRuleMetadata resource property to the template.
<a name="aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata-description"></a>The OrganizationCustomCodeRuleMetadata property type specifies Not currently supported by AWS CloudFormation. for an AWS::Config::OrganizationConfigRule: aws-resource-config-organizationconfigrule.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html

    .PARAMETER TagKeyScope
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-tagkeyscope
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER TagValueScope
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-tagvaluescope
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Runtime
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-runtime
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Description
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-description
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CodeText
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-codetext
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ResourceIdScope
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-resourceidscope
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER OrganizationConfigRuleTriggerTypes
        Not currently supported by AWS CloudFormation.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-organizationconfigruletriggertypes
        UpdateType: Mutable

    .PARAMETER DebugLogDeliveryAccounts
        Not currently supported by AWS CloudFormation.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-debuglogdeliveryaccounts
        UpdateType: Mutable

    .PARAMETER ResourceTypesScope
        Not currently supported by AWS CloudFormation.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-resourcetypesscope
        UpdateType: Mutable

    .PARAMETER MaximumExecutionFrequency
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-maximumexecutionfrequency
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER InputParameters
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomcoderulemetadata.html#cfn-config-organizationconfigrule-organizationcustomcoderulemetadata-inputparameters
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Config.OrganizationConfigRule.OrganizationCustomCodeRuleMetadata')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TagKeyScope,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TagValueScope,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Runtime,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Description,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CodeText,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResourceIdScope,
        [parameter(Mandatory = $false)]
        $OrganizationConfigRuleTriggerTypes,
        [parameter(Mandatory = $false)]
        $DebugLogDeliveryAccounts,
        [parameter(Mandatory = $false)]
        $ResourceTypesScope,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaximumExecutionFrequency,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InputParameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Config.OrganizationConfigRule.OrganizationCustomCodeRuleMetadata'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
