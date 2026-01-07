function Add-VSRTBFabricInboundExternalLinkLinkLogSettings {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::InboundExternalLink.LinkLogSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::InboundExternalLink.LinkLogSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-inboundexternallink-linklogsettings.html

    .PARAMETER ApplicationLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-inboundexternallink-linklogsettings.html#cfn-rtbfabric-inboundexternallink-linklogsettings-applicationlogs
        UpdateType: Conditional
        Type: ApplicationLogs

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.InboundExternalLink.LinkLogSettings')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.InboundExternalLink.LinkLogSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
