function Add-VSRTBFabricOutboundExternalLinkLinkLogSettings {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::OutboundExternalLink.LinkLogSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::OutboundExternalLink.LinkLogSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-outboundexternallink-linklogsettings.html

    .PARAMETER ApplicationLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-outboundexternallink-linklogsettings.html#cfn-rtbfabric-outboundexternallink-linklogsettings-applicationlogs
        UpdateType: Conditional
        Type: ApplicationLogs

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.OutboundExternalLink.LinkLogSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ApplicationLogs

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.OutboundExternalLink.LinkLogSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
