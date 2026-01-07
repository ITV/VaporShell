function Add-VSObservabilityAdminTelemetryRuleTelemetryDestinationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::TelemetryRule.TelemetryDestinationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::TelemetryRule.TelemetryDestinationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html

    .PARAMETER RetentionInDays
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-retentionindays
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER DestinationPattern
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-destinationpattern
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ELBLoadBalancerLoggingParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-elbloadbalancerloggingparameters
        UpdateType: Mutable
        Type: ELBLoadBalancerLoggingParameters

    .PARAMETER VPCFlowLogParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-vpcflowlogparameters
        UpdateType: Mutable
        Type: VPCFlowLogParameters

    .PARAMETER CloudtrailParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-cloudtrailparameters
        UpdateType: Mutable
        Type: CloudtrailParameters

    .PARAMETER WAFLoggingParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-wafloggingparameters
        UpdateType: Mutable
        Type: WAFLoggingParameters

    .PARAMETER LogDeliveryParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-logdeliveryparameters
        UpdateType: Mutable
        Type: LogDeliveryParameters

    .PARAMETER DestinationType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetryrule-telemetrydestinationconfiguration.html#cfn-observabilityadmin-telemetryrule-telemetrydestinationconfiguration-destinationtype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.TelemetryRule.TelemetryDestinationConfiguration')]
    [CmdletBinding()]

    Param
    (
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
        $RetentionInDays,

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
        $DestinationPattern,

        [Parameter(Mandatory = $false)]
        $ELBLoadBalancerLoggingParameters,

        [Parameter(Mandatory = $false)]
        $VPCFlowLogParameters,

        [Parameter(Mandatory = $false)]
        $CloudtrailParameters,

        [Parameter(Mandatory = $false)]
        $WAFLoggingParameters,

        [Parameter(Mandatory = $false)]
        $LogDeliveryParameters,

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
        $DestinationType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.TelemetryRule.TelemetryDestinationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
