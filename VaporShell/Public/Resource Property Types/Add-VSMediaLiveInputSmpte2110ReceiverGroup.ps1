function Add-VSMediaLiveInputSmpte2110ReceiverGroup {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Input.Smpte2110ReceiverGroup resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Input.Smpte2110ReceiverGroup resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroup.html

    .PARAMETER SdpSettings
        Type: Smpte2110ReceiverGroupSdpSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-smpte2110receivergroup.html#cfn-medialive-input-smpte2110receivergroup-sdpsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroup')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SdpSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Input.Smpte2110ReceiverGroup'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
