function Add-VSMediaConnectRouterInputMergeRouterInputProtocolConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterInput.MergeRouterInputProtocolConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterInput.MergeRouterInputProtocolConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mergerouterinputprotocolconfiguration.html

    .PARAMETER Rist
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mergerouterinputprotocolconfiguration.html#cfn-mediaconnect-routerinput-mergerouterinputprotocolconfiguration-rist
        UpdateType: Mutable
        Type: RistRouterInputConfiguration

    .PARAMETER Rtp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mergerouterinputprotocolconfiguration.html#cfn-mediaconnect-routerinput-mergerouterinputprotocolconfiguration-rtp
        UpdateType: Mutable
        Type: RtpRouterInputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterInput.MergeRouterInputProtocolConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Rist,

        [Parameter(Mandatory = $false)]
        $Rtp

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterInput.MergeRouterInputProtocolConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
