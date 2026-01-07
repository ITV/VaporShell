function Add-VSObservabilityAdminTelemetryRuleCondition {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::TelemetryRule.Condition resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::TelemetryRule.Condition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-condition.html

    .PARAMETER LabelNameCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-condition.html#cfn-observabilityadmin-telemetryrule-condition-labelnamecondition
        UpdateType: Mutable
        Type: LabelNameCondition

    .PARAMETER ActionCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-condition.html#cfn-observabilityadmin-telemetryrule-condition-actioncondition
        UpdateType: Mutable
        Type: ActionCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.TelemetryRule.Condition')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.TelemetryRule.Condition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
