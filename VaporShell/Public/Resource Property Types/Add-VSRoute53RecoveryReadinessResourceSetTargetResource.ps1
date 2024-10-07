function Add-VSRoute53RecoveryReadinessResourceSetTargetResource {
    <#
    .SYNOPSIS
        Adds an AWS::Route53RecoveryReadiness::ResourceSet.TargetResource resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Route53RecoveryReadiness::ResourceSet.TargetResource resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html

    .PARAMETER R53Resource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html#cfn-route53recoveryreadiness-resourceset-targetresource-r53resource
        UpdateType: Mutable
        Type: R53ResourceRecord

    .PARAMETER NLBResource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-targetresource.html#cfn-route53recoveryreadiness-resourceset-targetresource-nlbresource
        UpdateType: Mutable
        Type: NLBResource

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Route53RecoveryReadiness.ResourceSet.TargetResource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $R53Resource,
        [parameter(Mandatory = $false)]
        $NLBResource
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
