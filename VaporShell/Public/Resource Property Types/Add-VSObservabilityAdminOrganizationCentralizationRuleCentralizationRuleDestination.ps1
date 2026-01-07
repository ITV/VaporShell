function Add-VSObservabilityAdminOrganizationCentralizationRuleCentralizationRuleDestination {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRuleDestination resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRuleDestination resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html

    .PARAMETER Account
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationruledestination-account
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DestinationLogsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationruledestination-destinationlogsconfiguration
        UpdateType: Mutable
        Type: DestinationLogsConfiguration

    .PARAMETER Region
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationruledestination.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationruledestination-region
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleDestination')]
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
        $Account,

        [Parameter(Mandatory = $false)]
        $DestinationLogsConfiguration,

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
        $Region

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRuleDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
