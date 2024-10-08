function Add-VSNetworkManagerCoreNetworkSegments {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkManager::CoreNetwork.Segments resource property to the template.

    .DESCRIPTION
        Adds an AWS::NetworkManager::CoreNetwork.Segments resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-segments.html

    .PARAMETER SendTo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-segments.html#cfn-networkmanager-corenetwork-segments-sendto
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER SendVia
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-corenetwork-segments.html#cfn-networkmanager-corenetwork-segments-sendvia
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.NetworkManager.CoreNetwork.Segments')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SendTo,

        [Parameter(Mandatory = $false)]
        $SendVia

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkManager.CoreNetwork.Segments'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
