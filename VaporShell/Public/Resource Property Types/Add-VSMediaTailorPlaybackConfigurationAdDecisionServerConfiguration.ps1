function Add-VSMediaTailorPlaybackConfigurationAdDecisionServerConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaTailor::PlaybackConfiguration.AdDecisionServerConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaTailor::PlaybackConfiguration.AdDecisionServerConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-addecisionserverconfiguration.html

    .PARAMETER HttpRequest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-addecisionserverconfiguration.html#cfn-mediatailor-playbackconfiguration-addecisionserverconfiguration-httprequest
        UpdateType: Mutable
        Type: HttpRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaTailor.PlaybackConfiguration.AdDecisionServerConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $HttpRequest

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaTailor.PlaybackConfiguration.AdDecisionServerConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
