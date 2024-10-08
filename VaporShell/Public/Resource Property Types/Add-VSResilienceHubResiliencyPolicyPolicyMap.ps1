function Add-VSResilienceHubResiliencyPolicyPolicyMap {
    <#
    .SYNOPSIS
        Adds an AWS::ResilienceHub::ResiliencyPolicy.PolicyMap resource property to the template.

    .DESCRIPTION
        Adds an AWS::ResilienceHub::ResiliencyPolicy.PolicyMap resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-policymap.html

    .PARAMETER AZ
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-policymap.html#cfn-resiliencehub-resiliencypolicy-policymap-az
        UpdateType: Mutable
        Type: FailurePolicy

    .PARAMETER Region
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-policymap.html#cfn-resiliencehub-resiliencypolicy-policymap-region
        UpdateType: Mutable
        Type: FailurePolicy

    .PARAMETER Hardware
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-policymap.html#cfn-resiliencehub-resiliencypolicy-policymap-hardware
        UpdateType: Mutable
        Type: FailurePolicy

    .PARAMETER Software
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resiliencehub-resiliencypolicy-policymap.html#cfn-resiliencehub-resiliencypolicy-policymap-software
        UpdateType: Mutable
        Type: FailurePolicy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ResilienceHub.ResiliencyPolicy.PolicyMap')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AZ,

        [Parameter(Mandatory = $false)]
        $Region,

        [Parameter(Mandatory = $true)]
        $Hardware,

        [Parameter(Mandatory = $true)]
        $Software

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResilienceHub.ResiliencyPolicy.PolicyMap'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
