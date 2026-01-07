function Add-VSEKSCapabilityArgoCd {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Capability.ArgoCd resource property to the template.

    .DESCRIPTION
        Adds an AWS::EKS::Capability.ArgoCd resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-argocd.html

    .PARAMETER ServerUrl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-argocd.html#cfn-eks-capability-argocd-serverurl
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER NetworkAccess
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-argocd.html#cfn-eks-capability-argocd-networkaccess
        UpdateType: Mutable
        Type: NetworkAccess

    .PARAMETER AwsIdc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-argocd.html#cfn-eks-capability-argocd-awsidc
        UpdateType: Immutable
        Type: AwsIdc

    .PARAMETER RbacRoleMappings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-argocd.html#cfn-eks-capability-argocd-rbacrolemappings
        UpdateType: Mutable
        Type: List
        ItemType: ArgoCdRoleMapping
        DuplicatesAllowed: True

    .PARAMETER Namespace
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-argocd.html#cfn-eks-capability-argocd-namespace
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EKS.Capability.ArgoCd')]
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
        $ServerUrl,

        [Parameter(Mandatory = $false)]
        $NetworkAccess,

        [Parameter(Mandatory = $true)]
        $AwsIdc,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EKS.Capability.ArgoCdRoleMapping"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RbacRoleMappings,

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
        $Namespace

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Capability.ArgoCd'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
