function Add-VSSecurityHubAutomationRuleV2AutomationRulesActionV2 {
    <#
    .SYNOPSIS
        Adds an AWS::SecurityHub::AutomationRuleV2.AutomationRulesActionV2 resource property to the template.

    .DESCRIPTION
        Adds an AWS::SecurityHub::AutomationRuleV2.AutomationRulesActionV2 resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html

    .PARAMETER Type
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html#cfn-securityhub-automationrulev2-automationrulesactionv2-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ExternalIntegrationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html#cfn-securityhub-automationrulev2-automationrulesactionv2-externalintegrationconfiguration
        UpdateType: Mutable
        Type: ExternalIntegrationConfiguration

    .PARAMETER FindingFieldsUpdate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-automationrulesactionv2.html#cfn-securityhub-automationrulev2-automationrulesactionv2-findingfieldsupdate
        UpdateType: Mutable
        Type: AutomationRulesFindingFieldsUpdateV2

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SecurityHub.AutomationRuleV2.AutomationRulesActionV2')]
    [CmdletBinding()]

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
        $ExternalIntegrationConfiguration,

        [Parameter(Mandatory = $false)]
        $FindingFieldsUpdate

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecurityHub.AutomationRuleV2.AutomationRulesActionV2'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
