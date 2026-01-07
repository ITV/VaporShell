function Add-VSMediaTailorPlaybackConfigurationLogConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaTailor::PlaybackConfiguration.LogConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaTailor::PlaybackConfiguration.LogConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html

    .PARAMETER EnabledLoggingStrategies
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-enabledloggingstrategies
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER PercentEnabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-percentenabled
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER AdsInteractionLog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-adsinteractionlog
        UpdateType: Mutable
        Type: AdsInteractionLog

    .PARAMETER ManifestServiceInteractionLog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-logconfiguration.html#cfn-mediatailor-playbackconfiguration-logconfiguration-manifestserviceinteractionlog
        UpdateType: Mutable
        Type: ManifestServiceInteractionLog

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaTailor.PlaybackConfiguration.LogConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EnabledLoggingStrategies,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PercentEnabled,

        [Parameter(Mandatory = $false)]
        $AdsInteractionLog,

        [Parameter(Mandatory = $false)]
        $ManifestServiceInteractionLog

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaTailor.PlaybackConfiguration.LogConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
