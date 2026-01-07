function Add-VSIVSStageThumbnailConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IVS::Stage.ThumbnailConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::IVS::Stage.ThumbnailConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-thumbnailconfiguration.html

    .PARAMETER ParticipantThumbnailConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-stage-thumbnailconfiguration.html#cfn-ivs-stage-thumbnailconfiguration-participantthumbnailconfiguration
        UpdateType: Mutable
        Type: ParticipantThumbnailConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IVS.Stage.ThumbnailConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ParticipantThumbnailConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IVS.Stage.ThumbnailConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
