function Add-VSMediaLiveInputSmpte2110ReceiverGroupSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Input.Smpte2110ReceiverGroupSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Input.Smpte2110ReceiverGroupSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsettings.html

    .PARAMETER Smpte2110ReceiverGroups
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroupsettings.html#cfn-medialive-input-smpte2110receivergroupsettings-smpte2110receivergroups
        ItemType: Smpte2110ReceiverGroup
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroupSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroup"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Smpte2110ReceiverGroups

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroupSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
