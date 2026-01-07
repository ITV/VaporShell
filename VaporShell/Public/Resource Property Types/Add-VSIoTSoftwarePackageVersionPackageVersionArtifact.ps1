function Add-VSIoTSoftwarePackageVersionPackageVersionArtifact {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::SoftwarePackageVersion.PackageVersionArtifact resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoT::SoftwarePackageVersion.PackageVersionArtifact resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-softwarepackageversion-packageversionartifact.html

    .PARAMETER S3Location
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-softwarepackageversion-packageversionartifact.html#cfn-iot-softwarepackageversion-packageversionartifact-s3location
        UpdateType: Mutable
        Type: S3Location

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoT.SoftwarePackageVersion.PackageVersionArtifact')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $S3Location

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.SoftwarePackageVersion.PackageVersionArtifact'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
