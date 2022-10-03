function Add-VSRoute53RecoveryReadinessResourceSetTargetResource {
    <#
    .SYNOPSIS
        Adds an AWS::Route53RecoveryReadiness::ResourceSet.TargetResource resource property to the template. The target resource that the Route 53 record points to.

    .DESCRIPTION
        Adds an AWS::Route53RecoveryReadiness::ResourceSet.TargetResource resource property to the template.
The target resource that the Route 53 record points to.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html

    .PARAMETER NLBResource
        The Network Load Balancer resource that a DNS target resource points to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html#cfn-route53recoveryreadiness-resourceset-targetresource-nlbresource
        UpdateType: Mutable
        Type: NLBResource

    .PARAMETER R53Resource
        The Route 53 resource that a DNS target resource record points to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html#cfn-route53recoveryreadiness-resourceset-targetresource-r53resource
        UpdateType: Mutable
        Type: R53ResourceRecord

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Route53RecoveryReadiness.ResourceSet.TargetResource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $NLBResource,
        [parameter(Mandatory = $false)]
        $R53Resource
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Route53RecoveryReadiness.ResourceSet.TargetResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
