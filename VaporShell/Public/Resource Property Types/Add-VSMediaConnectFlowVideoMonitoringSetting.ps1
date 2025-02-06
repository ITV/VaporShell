function Add-VSMediaConnectFlowVideoMonitoringSetting {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::Flow.VideoMonitoringSetting resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::Flow.VideoMonitoringSetting resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-videomonitoringsetting.html

    .PARAMETER BlackFrames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-videomonitoringsetting.html#cfn-mediaconnect-flow-videomonitoringsetting-blackframes
        UpdateType: Mutable
        Type: BlackFrames

    .PARAMETER FrozenFrames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-videomonitoringsetting.html#cfn-mediaconnect-flow-videomonitoringsetting-frozenframes
        UpdateType: Mutable
        Type: FrozenFrames

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.Flow.VideoMonitoringSetting')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $BlackFrames,

        [Parameter(Mandatory = $false)]
        $FrozenFrames

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.Flow.VideoMonitoringSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
