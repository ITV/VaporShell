function Add-VSApplicationSignalsServiceLevelObjectiveExclusionWindow {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationSignals::ServiceLevelObjective.ExclusionWindow resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApplicationSignals::ServiceLevelObjective.ExclusionWindow resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html

    .PARAMETER Window
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-window
        UpdateType: Mutable
        Type: Window

    .PARAMETER RecurrenceRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-recurrencerule
        UpdateType: Mutable
        Type: RecurrenceRule

    .PARAMETER StartTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-starttime
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Reason
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-exclusionwindow.html#cfn-applicationsignals-servicelevelobjective-exclusionwindow-reason
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.ExclusionWindow')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Window,

        [Parameter(Mandatory = $false)]
        $RecurrenceRule,

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
        $StartTime,

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
        $Reason

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.ExclusionWindow'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
