function Add-VSObservabilityAdminTelemetryPipelinesTelemetryPipeline {
    <#
    .SYNOPSIS
        Adds an AWS::ObservabilityAdmin::TelemetryPipelines.TelemetryPipeline resource property to the template.

    .DESCRIPTION
        Adds an AWS::ObservabilityAdmin::TelemetryPipelines.TelemetryPipeline resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html

    .PARAMETER Status
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-status
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LastUpdateTimeStamp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-lastupdatetimestamp
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER CreatedTimeStamp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-createdtimestamp
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-configuration
        UpdateType: Mutable
        Type: TelemetryPipelineConfiguration

    .PARAMETER StatusReason
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-statusreason
        UpdateType: Mutable
        Type: TelemetryPipelineStatusReason

    .PARAMETER Arn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-arn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Tags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-tags
        UpdateType: Mutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: False

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-observabilityadmin-telemetrypipelines-telemetrypipeline.html#cfn-observabilityadmin-telemetrypipelines-telemetrypipeline-name
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ObservabilityAdmin.TelemetryPipelines.TelemetryPipeline')]
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
        $Status,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LastUpdateTimeStamp,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CreatedTimeStamp,

        [Parameter(Mandatory = $false)]
        $Configuration,

        [Parameter(Mandatory = $false)]
        $StatusReason,

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
        $Arn,

        [VaporShell.Core.TransformTag()]
        [Parameter(Mandatory = $false)]
        $Tags,

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
        $Name

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ObservabilityAdmin.TelemetryPipelines.TelemetryPipeline'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
