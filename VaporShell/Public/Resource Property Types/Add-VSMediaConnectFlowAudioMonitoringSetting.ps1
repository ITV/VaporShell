function Add-VSMediaConnectFlowAudioMonitoringSetting {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::Flow.AudioMonitoringSetting resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::Flow.AudioMonitoringSetting resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-audiomonitoringsetting.html

    .PARAMETER SilentAudio
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-audiomonitoringsetting.html#cfn-mediaconnect-flow-audiomonitoringsetting-silentaudio
        UpdateType: Mutable
        Type: SilentAudio

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.Flow.AudioMonitoringSetting')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SilentAudio

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.Flow.AudioMonitoringSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
