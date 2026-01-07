function Add-VSSageMakerUserProfileCustomFileSystemConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::UserProfile.CustomFileSystemConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::UserProfile.CustomFileSystemConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html

    .PARAMETER EFSFileSystemConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html#cfn-sagemaker-userprofile-customfilesystemconfig-efsfilesystemconfig
        UpdateType: Mutable
        Type: EFSFileSystemConfig

    .PARAMETER S3FileSystemConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html#cfn-sagemaker-userprofile-customfilesystemconfig-s3filesystemconfig
        UpdateType: Mutable
        Type: S3FileSystemConfig

    .PARAMETER FSxLustreFileSystemConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-customfilesystemconfig.html#cfn-sagemaker-userprofile-customfilesystemconfig-fsxlustrefilesystemconfig
        UpdateType: Mutable
        Type: FSxLustreFileSystemConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.UserProfile.CustomFileSystemConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EFSFileSystemConfig,

        [Parameter(Mandatory = $false)]
        $S3FileSystemConfig,

        [Parameter(Mandatory = $false)]
        $FSxLustreFileSystemConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.UserProfile.CustomFileSystemConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
