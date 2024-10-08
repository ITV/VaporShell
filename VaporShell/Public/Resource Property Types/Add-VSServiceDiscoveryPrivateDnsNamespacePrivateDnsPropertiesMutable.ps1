function Add-VSServiceDiscoveryPrivateDnsNamespacePrivateDnsPropertiesMutable {
    <#
    .SYNOPSIS
        Adds an AWS::ServiceDiscovery::PrivateDnsNamespace.PrivateDnsPropertiesMutable resource property to the template.

    .DESCRIPTION
        Adds an AWS::ServiceDiscovery::PrivateDnsNamespace.PrivateDnsPropertiesMutable resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-privatednspropertiesmutable.html

    .PARAMETER SOA
        Type: SOA
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-privatednspropertiesmutable.html#cfn-servicediscovery-privatednsnamespace-privatednspropertiesmutable-soa
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ServiceDiscovery.PrivateDnsNamespace.PrivateDnsPropertiesMutable')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SOA

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ServiceDiscovery.PrivateDnsNamespace.PrivateDnsPropertiesMutable'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
