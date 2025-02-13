function Add-VSMediaPackagePackagingConfigurationMssEncryption {
    <#
    .SYNOPSIS
        Adds an AWS::MediaPackage::PackagingConfiguration.MssEncryption resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaPackage::PackagingConfiguration.MssEncryption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-mssencryption.html

    .PARAMETER SpekeKeyProvider
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-mssencryption.html#cfn-mediapackage-packagingconfiguration-mssencryption-spekekeyprovider
        UpdateType: Mutable
        Type: SpekeKeyProvider

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaPackage.PackagingConfiguration.MssEncryption')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaPackage.PackagingConfiguration.MssEncryption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
