function Add-VSMediaTailorPlaybackConfigurationAdsInteractionLog {
    <#
    .SYNOPSIS
        Adds an AWS::MediaTailor::PlaybackConfiguration.AdsInteractionLog resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaTailor::PlaybackConfiguration.AdsInteractionLog resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adsinteractionlog.html

    .PARAMETER ExcludeEventTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adsinteractionlog.html#cfn-mediatailor-playbackconfiguration-adsinteractionlog-excludeeventtypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER PublishOptInEventTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-adsinteractionlog.html#cfn-mediatailor-playbackconfiguration-adsinteractionlog-publishoptineventtypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaTailor.PlaybackConfiguration.AdsInteractionLog')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ExcludeEventTypes,

        [Parameter(Mandatory = $false)]
        $PublishOptInEventTypes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaTailor.PlaybackConfiguration.AdsInteractionLog'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
