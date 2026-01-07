function Add-VSMediaConnectRouterOutputRouterOutputProtocolConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterOutput.RouterOutputProtocolConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterOutput.RouterOutputProtocolConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputprotocolconfiguration.html

    .PARAMETER SrtCaller
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputprotocolconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputprotocolconfiguration-srtcaller
        UpdateType: Mutable
        Type: SrtCallerRouterOutputConfiguration

    .PARAMETER SrtListener
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputprotocolconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputprotocolconfiguration-srtlistener
        UpdateType: Mutable
        Type: SrtListenerRouterOutputConfiguration

    .PARAMETER Rist
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputprotocolconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputprotocolconfiguration-rist
        UpdateType: Mutable
        Type: RistRouterOutputConfiguration

    .PARAMETER Rtp
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputprotocolconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputprotocolconfiguration-rtp
        UpdateType: Mutable
        Type: RtpRouterOutputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterOutput.RouterOutputProtocolConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SrtCaller,

        [Parameter(Mandatory = $false)]
        $SrtListener,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterOutput.RouterOutputProtocolConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
