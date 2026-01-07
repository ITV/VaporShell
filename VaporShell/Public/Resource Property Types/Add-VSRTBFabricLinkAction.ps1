function Add-VSRTBFabricLinkAction {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::Link.Action resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::Link.Action resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-action.html

    .PARAMETER NoBid
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-action.html#cfn-rtbfabric-link-action-nobid
        UpdateType: Mutable
        Type: NoBidAction

    .PARAMETER HeaderTag
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-action.html#cfn-rtbfabric-link-action-headertag
        UpdateType: Mutable
        Type: HeaderTagAction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.Link.Action')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NoBid,

        [Parameter(Mandatory = $false)]
        $HeaderTag

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.Link.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
