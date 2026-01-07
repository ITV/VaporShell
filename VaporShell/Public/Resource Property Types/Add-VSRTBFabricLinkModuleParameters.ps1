function Add-VSRTBFabricLinkModuleParameters {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::Link.ModuleParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::Link.ModuleParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleparameters.html

    .PARAMETER NoBid
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleparameters.html#cfn-rtbfabric-link-moduleparameters-nobid
        UpdateType: Mutable
        Type: NoBidModuleParameters

    .PARAMETER OpenRtbAttribute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-moduleparameters.html#cfn-rtbfabric-link-moduleparameters-openrtbattribute
        UpdateType: Mutable
        Type: OpenRtbAttributeModuleParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.Link.ModuleParameters')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NoBid,

        [Parameter(Mandatory = $false)]
        $OpenRtbAttribute

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.Link.ModuleParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
