function Add-VSBatchSchedulingPolicyFairsharePolicy {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::SchedulingPolicy.FairsharePolicy resource property to the template. The fair share policy for a scheduling policy.

    .DESCRIPTION
        Adds an AWS::Batch::SchedulingPolicy.FairsharePolicy resource property to the template.
The fair share policy for a scheduling policy.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html

    .PARAMETER ShareDecaySeconds
        The time period to use to calculate a fair share percentage for each fair share identifier in use, in seconds. A value of zero 0 indicates that only current usage should be measured. The decay allows for more recently run jobs to have more weight than jobs that ran earlier. The maximum supported value is 604800 1 week.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html#cfn-batch-schedulingpolicy-fairsharepolicy-sharedecayseconds
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER ComputeReservation
        A value used to reserve some of the available maximum vCPU for fair share identifiers that have not yet been used.
The reserved ratio is computeReservation/100^ActiveFairShares  where  ActiveFairShares  is the number of active fair share identifiers.
For example, a computeReservation value of 50 indicates that AWS Batch should reserve 50% of the maximum available vCPU if there is only one fair share identifier, 25% if there are two fair share identifiers, and 12.5% if there are three fair share identifiers. A computeReservation value of 25 indicates that AWS Batch should reserve 25% of the maximum available vCPU if there is only one fair share identifier, 6.25% if there are two fair share identifiers, and 1.56% if there are three fair share identifiers.
The minimum value is 0 and the maximum value is 99.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html#cfn-batch-schedulingpolicy-fairsharepolicy-computereservation
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER ShareDistribution
        An array of SharedIdentifier objects that contain the weights for the fair share identifiers for the fair share policy. Fair share identifiers that aren't included have a default weight of 1.0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-fairsharepolicy.html#cfn-batch-schedulingpolicy-fairsharepolicy-sharedistribution
        UpdateType: Mutable
        Type: List
        ItemType: ShareAttributes

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.SchedulingPolicy.FairsharePolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ShareDecaySeconds,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ComputeReservation,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Batch.SchedulingPolicy.ShareAttributes"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ShareDistribution
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.SchedulingPolicy.FairsharePolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
