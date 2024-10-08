function Add-VSMediaLiveChannelEncoderSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.EncoderSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.EncoderSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html

    .PARAMETER AudioDescriptions
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-audiodescriptions
        ItemType: AudioDescription
        UpdateType: Mutable

    .PARAMETER VideoDescriptions
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-videodescriptions
        ItemType: VideoDescription
        UpdateType: Mutable

    .PARAMETER GlobalConfiguration
        Type: GlobalConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-globalconfiguration
        UpdateType: Mutable

    .PARAMETER MotionGraphicsConfiguration
        Type: MotionGraphicsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-motiongraphicsconfiguration
        UpdateType: Mutable

    .PARAMETER ThumbnailConfiguration
        Type: ThumbnailConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-thumbnailconfiguration
        UpdateType: Mutable

    .PARAMETER FeatureActivations
        Type: FeatureActivations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-featureactivations
        UpdateType: Mutable

    .PARAMETER CaptionDescriptions
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-captiondescriptions
        ItemType: CaptionDescription
        UpdateType: Mutable

    .PARAMETER AvailConfiguration
        Type: AvailConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-availconfiguration
        UpdateType: Mutable

    .PARAMETER ColorCorrectionSettings
        Type: ColorCorrectionSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-colorcorrectionsettings
        UpdateType: Mutable

    .PARAMETER OutputGroups
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-outputgroups
        ItemType: OutputGroup
        UpdateType: Mutable

    .PARAMETER AvailBlanking
        Type: AvailBlanking
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-availblanking
        UpdateType: Mutable

    .PARAMETER NielsenConfiguration
        Type: NielsenConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-nielsenconfiguration
        UpdateType: Mutable

    .PARAMETER BlackoutSlate
        Type: BlackoutSlate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-blackoutslate
        UpdateType: Mutable

    .PARAMETER TimecodeConfig
        Type: TimecodeConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-encodersettings.html#cfn-medialive-channel-encodersettings-timecodeconfig
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.EncoderSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Channel.AudioDescription"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AudioDescriptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Channel.VideoDescription"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VideoDescriptions,

        [Parameter(Mandatory = $false)]
        $GlobalConfiguration,

        [Parameter(Mandatory = $false)]
        $MotionGraphicsConfiguration,

        [Parameter(Mandatory = $false)]
        $ThumbnailConfiguration,

        [Parameter(Mandatory = $false)]
        $FeatureActivations,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Channel.CaptionDescription"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CaptionDescriptions,

        [Parameter(Mandatory = $false)]
        $AvailConfiguration,

        [Parameter(Mandatory = $false)]
        $ColorCorrectionSettings,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Channel.OutputGroup"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $OutputGroups,

        [Parameter(Mandatory = $false)]
        $AvailBlanking,

        [Parameter(Mandatory = $false)]
        $NielsenConfiguration,

        [Parameter(Mandatory = $false)]
        $BlackoutSlate,

        [Parameter(Mandatory = $false)]
        $TimecodeConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.EncoderSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
