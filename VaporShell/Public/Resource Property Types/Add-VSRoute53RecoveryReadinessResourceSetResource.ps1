function Add-VSRoute53RecoveryReadinessResourceSetResource {
    <#
    .SYNOPSIS
        Adds an AWS::Route53RecoveryReadiness::ResourceSet.Resource resource property to the template. The resource element of a resource set.

    .DESCRIPTION
        Adds an AWS::Route53RecoveryReadiness::ResourceSet.Resource resource property to the template.
The resource element of a resource set.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-resource.html

    .PARAMETER ResourceArn
        The Amazon Resource Name ARN of the AWS resource. This is a required setting for all ResourceSet ResourceSetType settings except AWS::Route53RecoveryReadiness::DNSTargetResource. Do not set this when ResourceSetType is set to AWS::Route53RecoveryReadiness::DNSTargetResource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-resource.html#cfn-route53recoveryreadiness-resourceset-resource-resourcearn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ComponentId
        The component identifier of the resource, generated when DNS target resource is used.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-resource.html#cfn-route53recoveryreadiness-resourceset-resource-componentid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DnsTargetResource
        A component for DNS/routing control readiness checks. This is a required setting when ResourceSet ResourceSetType is set to AWS::Route53RecoveryReadiness::DNSTargetResource. Do not set it for any other ResourceSetType setting.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-resource.html#cfn-route53recoveryreadiness-resourceset-resource-dnstargetresource
        UpdateType: Mutable
        Type: DNSTargetResource

    .PARAMETER ReadinessScopes
        The recovery group Amazon Resource Name ARN or the cell ARN that the readiness checks for this resource set are scoped to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoveryreadiness-resourceset-resource.html#cfn-route53recoveryreadiness-resourceset-resource-readinessscopes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Route53RecoveryReadiness.ResourceSet.Resource')]
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
        $ResourceArn,
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
        $ComponentId,
        [parameter(Mandatory = $false)]
        $DnsTargetResource,
        [parameter(Mandatory = $false)]
        $ReadinessScopes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Route53RecoveryReadiness.ResourceSet.Resource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
