function Add-VSEKSCapabilityCapabilityConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::EKS::Capability.CapabilityConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::EKS::Capability.CapabilityConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-capabilityconfiguration.html

    .PARAMETER ArgoCd
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-capability-capabilityconfiguration.html#cfn-eks-capability-capabilityconfiguration-argocd
        UpdateType: Mutable
        Type: ArgoCd

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EKS.Capability.CapabilityConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ArgoCd

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EKS.Capability.CapabilityConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
