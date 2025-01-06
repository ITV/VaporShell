function Add-VSIoTSiteWisePortalPortalTypeEntry {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::Portal.PortalTypeEntry resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::Portal.PortalTypeEntry resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-portaltypeentry.html

    .PARAMETER PortalTools
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-portal-portaltypeentry.html#cfn-iotsitewise-portal-portaltypeentry-portaltools
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTSiteWise.Portal.PortalTypeEntry')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $PortalTools

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.Portal.PortalTypeEntry'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
