function Add-VSMediaLiveMultiplexMultiplexOutputDestination {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Multiplex.MultiplexOutputDestination resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MediaLive::Multiplex.MultiplexOutputDestination resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexoutputdestination.html

    .PARAMETER MultiplexMediaConnectOutputDestinationSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexoutputdestination.html#cfn-medialive-multiplex-multiplexoutputdestination-multiplexmediaconnectoutputdestinationsettings
        UpdateType: Mutable
        Type: MultiplexMediaConnectOutputDestinationSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Multiplex.MultiplexOutputDestination')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $MultiplexMediaConnectOutputDestinationSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Multiplex.MultiplexOutputDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
