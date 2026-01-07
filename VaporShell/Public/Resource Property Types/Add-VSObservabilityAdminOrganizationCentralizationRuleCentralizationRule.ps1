function Add-VSObservabilityAdminOrganizationCentralizationRuleCentralizationRule {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRule resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::OrganizationCentralizationRule.CentralizationRule resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrule.html

    .PARAMETER Destination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrule-destination
        UpdateType: Mutable
        Type: CentralizationRuleDestination

    .PARAMETER Source
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationcentralizationrule-centralizationrule.html#cfn-observabilityadmin-organizationcentralizationrule-centralizationrule-source
        UpdateType: Mutable
        Type: CentralizationRuleSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRule')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Destination,

        [Parameter(Mandatory = $true)]
        $Source

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.OrganizationCentralizationRule.CentralizationRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
