function Add-VSDLMLifecyclePolicySchedule {
    <#
    .SYNOPSIS
        Adds an AWS::DLM::LifecyclePolicy.Schedule resource property to the template. Specifies a backup schedule for a snapshot or AMI lifecycle policy.

    .DESCRIPTION
        Adds an AWS::DLM::LifecyclePolicy.Schedule resource property to the template.
Specifies a backup schedule for a snapshot or AMI lifecycle policy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html

    .PARAMETER ShareRules
        The rule for sharing snapshots with other AWS accounts.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-sharerules
        ItemType: ShareRule
        UpdateType: Mutable

    .PARAMETER DeprecateRule
        The AMI deprecation rule for the schedule.

        Type: DeprecateRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-deprecaterule
        UpdateType: Mutable

    .PARAMETER TagsToAdd
        The tags to apply to policy-created resources. These user-defined tags are in addition to the AWS-added lifecycle tags.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-tagstoadd
        ItemType: Tag
        UpdateType: Mutable

    .PARAMETER CreateRule
        The creation rule.

        Type: CreateRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-createrule
        UpdateType: Mutable

    .PARAMETER VariableTags
        A collection of key/value pairs with values determined dynamically when the policy is executed. Keys may be any valid Amazon EC2 tag key. Values must be in one of the two following formats: $instance-id or $timestamp. Variable tags are only valid for EBS Snapshot Management – Instance policies.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-variabletags
        ItemType: Tag
        UpdateType: Mutable

    .PARAMETER FastRestoreRule
        The rule for enabling fast snapshot restore.

        Type: FastRestoreRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-fastrestorerule
        UpdateType: Mutable

    .PARAMETER ArchiveRule
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Type: ArchiveRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-archiverule
        UpdateType: Mutable

    .PARAMETER RetainRule
        The retention rule.

        Type: RetainRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-retainrule
        UpdateType: Mutable

    .PARAMETER CrossRegionCopyRules
        The rule for cross-Region snapshot copies.
You can only specify cross-Region copy rules for policies that create snapshots in a Region. If the policy creates snapshots on an Outpost, then you cannot copy the snapshots to a Region or to an Outpost. If the policy creates snapshots in a Region, then snapshots can be copied to up to three Regions or Outposts.

        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-crossregioncopyrules
        ItemType: CrossRegionCopyRule
        UpdateType: Mutable

    .PARAMETER Name
        The name of the schedule.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-name
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER CopyTags
        Copy all user-defined tags on a source volume to snapshots of the volume created by this policy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-copytags
        PrimitiveType: Boolean
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DLM.LifecyclePolicy.Schedule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DLM.LifecyclePolicy.ShareRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ShareRules,
        [parameter(Mandatory = $false)]
        $DeprecateRule,
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $TagsToAdd,
        [parameter(Mandatory = $false)]
        $CreateRule,
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $VariableTags,
        [parameter(Mandatory = $false)]
        $FastRestoreRule,
        [parameter(Mandatory = $false)]
        $ArchiveRule,
        [parameter(Mandatory = $false)]
        $RetainRule,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DLM.LifecyclePolicy.CrossRegionCopyRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CrossRegionCopyRules,
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
        $Name,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CopyTags
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DLM.LifecyclePolicy.Schedule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
