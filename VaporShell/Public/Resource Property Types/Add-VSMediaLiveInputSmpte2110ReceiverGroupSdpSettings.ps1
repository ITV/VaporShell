function Add-VSMediaLiveInputSmpte2110ReceiverGroupSdpSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Input.Smpte2110ReceiverGroupSdpSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Input.Smpte2110ReceiverGroupSdpSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html

    .PARAMETER AudioSdps
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html#cfn-medialive-input-smpte2110receivergroupsdpsettings-audiosdps
        ItemType: InputSdpLocation
        UpdateType: Mutable

    .PARAMETER AncillarySdps
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html#cfn-medialive-input-smpte2110receivergroupsdpsettings-ancillarysdps
        ItemType: InputSdpLocation
        UpdateType: Mutable

    .PARAMETER VideoSdp
        Type: InputSdpLocation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsdpsettings.html#cfn-medialive-input-smpte2110receivergroupsdpsettings-videosdp
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroupSdpSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Input.InputSdpLocation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AudioSdps,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Input.InputSdpLocation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AncillarySdps,

        [Parameter(Mandatory = $false)]
        $VideoSdp

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroupSdpSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
