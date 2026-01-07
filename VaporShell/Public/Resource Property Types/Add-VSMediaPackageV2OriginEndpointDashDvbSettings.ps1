function Add-VSMediaPackageV2OriginEndpointDashDvbSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackageV2::OriginEndpoint.DashDvbSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaPackageV2::OriginEndpoint.DashDvbSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbsettings.html

    .PARAMETER FontDownload
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbsettings.html#cfn-mediapackagev2-originendpoint-dashdvbsettings-fontdownload
        UpdateType: Mutable
        Type: DashDvbFontDownload

    .PARAMETER ErrorMetrics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbsettings.html#cfn-mediapackagev2-originendpoint-dashdvbsettings-errormetrics
        UpdateType: Mutable
        Type: List
        ItemType: DashDvbMetricsReporting
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaPackageV2.OriginEndpoint.DashDvbSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $FontDownload,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaPackageV2.OriginEndpoint.DashDvbMetricsReporting"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ErrorMetrics

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackageV2.OriginEndpoint.DashDvbSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
