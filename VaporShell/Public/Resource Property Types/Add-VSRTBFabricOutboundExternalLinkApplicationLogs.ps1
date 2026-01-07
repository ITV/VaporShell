function Add-VSRTBFabricOutboundExternalLinkApplicationLogs {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::OutboundExternalLink.ApplicationLogs resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::OutboundExternalLink.ApplicationLogs resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-outboundexternallink-applicationlogs.html

    .PARAMETER LinkApplicationLogSampling
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-outboundexternallink-applicationlogs.html#cfn-rtbfabric-outboundexternallink-applicationlogs-linkapplicationlogsampling
        UpdateType: Conditional
        Type: LinkApplicationLogSampling

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.OutboundExternalLink.ApplicationLogs')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LinkApplicationLogSampling

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.OutboundExternalLink.ApplicationLogs'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
