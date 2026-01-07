function Add-VSMediaPackageV2OriginEndpointDashSubtitleConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackageV2::OriginEndpoint.DashSubtitleConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaPackageV2::OriginEndpoint.DashSubtitleConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashsubtitleconfiguration.html

    .PARAMETER TtmlConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashsubtitleconfiguration.html#cfn-mediapackagev2-originendpoint-dashsubtitleconfiguration-ttmlconfiguration
        UpdateType: Mutable
        Type: DashTtmlConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaPackageV2.OriginEndpoint.DashSubtitleConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TtmlConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackageV2.OriginEndpoint.DashSubtitleConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
