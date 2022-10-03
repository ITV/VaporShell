function Add-VSMediaLiveChannelNielsenWatermarksSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.NielsenWatermarksSettings resource property to the template. Settings to configure Nielsen Watermarks in the audio encode.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.NielsenWatermarksSettings resource property to the template.
Settings to configure Nielsen Watermarks in the audio encode.

The parent of this entity is AudioWatermarkSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenwatermarkssettings.html

    .PARAMETER NielsenDistributionType
        Choose the distribution types that you want to assign to the watermarks: - PROGRAM_CONTENT - FINAL_DISTRIBUTOR

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenwatermarkssettings.html#cfn-medialive-channel-nielsenwatermarkssettings-nielsendistributiontype
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER NielsenCbetSettings
        Complete these fields only if you want to insert watermarks of type Nielsen CBET

        Type: NielsenCBET
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenwatermarkssettings.html#cfn-medialive-channel-nielsenwatermarkssettings-nielsencbetsettings
        UpdateType: Mutable

    .PARAMETER NielsenNaesIiNwSettings
        Complete these fields only if you want to insert watermarks of type Nielsen NAES II N2 and Nielsen NAES VI NW.

        Type: NielsenNaesIiNw
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-nielsenwatermarkssettings.html#cfn-medialive-channel-nielsenwatermarkssettings-nielsennaesiinwsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.NielsenWatermarksSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $NielsenDistributionType,
        [parameter(Mandatory = $false)]
        $NielsenCbetSettings,
        [parameter(Mandatory = $false)]
        $NielsenNaesIiNwSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.NielsenWatermarksSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
