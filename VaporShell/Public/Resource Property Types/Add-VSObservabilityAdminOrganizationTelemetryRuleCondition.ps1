function Add-VSObservabilityAdminOrganizationTelemetryRuleCondition {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::OrganizationTelemetryRule.Condition resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::OrganizationTelemetryRule.Condition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-condition.html

    .PARAMETER LabelNameCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-condition.html#cfn-observabilityadmin-organizationtelemetryrule-condition-labelnamecondition
        UpdateType: Mutable
        Type: LabelNameCondition

    .PARAMETER ActionCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-organizationtelemetryrule-condition.html#cfn-observabilityadmin-organizationtelemetryrule-condition-actioncondition
        UpdateType: Mutable
        Type: ActionCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.OrganizationTelemetryRule.Condition')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LabelNameCondition,

        [Parameter(Mandatory = $false)]
        $ActionCondition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.OrganizationTelemetryRule.Condition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
