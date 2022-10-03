function Add-VSNimbleStudioLaunchProfileStreamConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::NimbleStudio::LaunchProfile.StreamConfiguration resource property to the template. A configuration for a streaming session.

    .DESCRIPTION
        Adds an AWS::NimbleStudio::LaunchProfile.StreamConfiguration resource property to the template.
A configuration for a streaming session.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html

    .PARAMETER ClipboardMode
        Enable or disable the use of the system clipboard to copy and paste between the streaming session and streaming client.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html#cfn-nimblestudio-launchprofile-streamconfiguration-clipboardmode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Ec2InstanceTypes
        The EC2 instance types that users can select from when launching a streaming session with this launch profile.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html#cfn-nimblestudio-launchprofile-streamconfiguration-ec2instancetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER MaxSessionLengthInMinutes
        The length of time, in minutes, that a streaming session can be active before it is stopped or terminated. After this point, Nimble Studio automatically terminates or stops the session. The default length of time is 690 minutes, and the maximum length of time is 30 days.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html#cfn-nimblestudio-launchprofile-streamconfiguration-maxsessionlengthinminutes
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER StreamingImageIds
        The streaming images that users can select from when launching a streaming session with this launch profile.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html#cfn-nimblestudio-launchprofile-streamconfiguration-streamingimageids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER MaxStoppedSessionLengthInMinutes
        Integer that determines if you can start and stop your sessions and how long a session can stay in the STOPPED state. The default value is 0. The maximum value is 5760.
If the value is missing or set to 0, your sessions can’t be stopped. If you then call StopStreamingSession, the session fails. If the time that a session stays in the READY state exceeds the maxSessionLengthInMinutes value, the session will automatically be terminated instead of stopped.
If the value is set to a positive number, the session can be stopped. You can call StopStreamingSession to stop sessions in the READY state. If the time that a session stays in the READY state exceeds the maxSessionLengthInMinutes value, the session will automatically be stopped instead of terminated.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html#cfn-nimblestudio-launchprofile-streamconfiguration-maxstoppedsessionlengthinminutes
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER SessionStorage
        Optional The upload storage for a streaming session.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-launchprofile-streamconfiguration.html#cfn-nimblestudio-launchprofile-streamconfiguration-sessionstorage
        UpdateType: Mutable
        Type: StreamConfigurationSessionStorage

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NimbleStudio.LaunchProfile.StreamConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ClipboardMode,
        [parameter(Mandatory = $true)]
        $Ec2InstanceTypes,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxSessionLengthInMinutes,
        [parameter(Mandatory = $true)]
        $StreamingImageIds,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxStoppedSessionLengthInMinutes,
        [parameter(Mandatory = $false)]
        $SessionStorage
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NimbleStudio.LaunchProfile.StreamConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
