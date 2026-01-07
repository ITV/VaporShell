function Add-VSMediaLiveChannelAdditionalDestinations {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.AdditionalDestinations resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.AdditionalDestinations resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-additionaldestinations.html

    .PARAMETER Destination
        Type: OutputLocationRef
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-additionaldestinations.html#cfn-medialive-channel-additionaldestinations-destination
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaLive.Channel.AdditionalDestinations')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Destination

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.AdditionalDestinations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
