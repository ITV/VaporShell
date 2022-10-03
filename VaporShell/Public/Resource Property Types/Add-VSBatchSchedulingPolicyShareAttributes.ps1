function Add-VSBatchSchedulingPolicyShareAttributes {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::SchedulingPolicy.ShareAttributes resource property to the template. Specifies the weights for the fair share identifiers for the fair share policy. Fair share identifiers that aren't included have a default weight of 1.0.

    .DESCRIPTION
        Adds an AWS::Batch::SchedulingPolicy.ShareAttributes resource property to the template.
Specifies the weights for the fair share identifiers for the fair share policy. Fair share identifiers that aren't included have a default weight of 1.0.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-shareattributes.html

    .PARAMETER ShareIdentifier
        A fair share identifier or fair share identifier prefix. If the string ends with an asterisk *, this entry specifies the weight factor to use for fair share identifiers that start with that prefix. The list of fair share identifiers in a fair share policy cannot overlap. For example, you can't have one that specifies a shareIdentifier of UserA* and another that specifies a shareIdentifier of UserA-1.
There can be no more than 500 fair share identifiers active in a job queue.
The string is limited to 255 alphanumeric characters, optionally followed by an asterisk *.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-shareattributes.html#cfn-batch-schedulingpolicy-shareattributes-shareidentifier
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER WeightFactor
        The weight factor for the fair share identifier. The default value is 1.0. A lower value has a higher priority for compute resources. For example, jobs that use a share identifier with a weight factor of 0.125 1/8 get 8 times the compute resources of jobs that use a share identifier with a weight factor of 1.
The smallest supported value is 0.0001, and the largest supported value is 999.9999.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-schedulingpolicy-shareattributes.html#cfn-batch-schedulingpolicy-shareattributes-weightfactor
        UpdateType: Mutable
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Batch.SchedulingPolicy.ShareAttributes')]
    [cmdletbinding()]
    Param
    (
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
        $ShareIdentifier,
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
        $WeightFactor
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.SchedulingPolicy.ShareAttributes'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
