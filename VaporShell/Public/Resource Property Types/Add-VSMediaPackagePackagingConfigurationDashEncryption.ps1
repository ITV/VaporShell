function Add-VSMediaPackagePackagingConfigurationDashEncryption {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackage::PackagingConfiguration.DashEncryption resource property to the template. Holds encryption information so that access to the content can be controlled by a DRM solution.

    .DESCRIPTION
        Adds an AWS::MediaPackage::PackagingConfiguration.DashEncryption resource property to the template.
Holds encryption information so that access to the content can be controlled by a DRM solution.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashencryption.html

    .PARAMETER SpekeKeyProvider
        Parameters for the SPEKE key provider.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-dashencryption.html#cfn-mediapackage-packagingconfiguration-dashencryption-spekekeyprovider
        UpdateType: Mutable
        Type: SpekeKeyProvider

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaPackage.PackagingConfiguration.DashEncryption')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SpekeKeyProvider
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackage.PackagingConfiguration.DashEncryption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
