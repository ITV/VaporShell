function Add-VSObservabilityAdminTelemetryRuleLogDeliveryParameters {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::TelemetryRule.LogDeliveryParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::TelemetryRule.LogDeliveryParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-logdeliveryparameters.html

    .PARAMETER LogTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-logdeliveryparameters.html#cfn-observabilityadmin-telemetryrule-logdeliveryparameters-logtypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.TelemetryRule.LogDeliveryParameters')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LogTypes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.TelemetryRule.LogDeliveryParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
