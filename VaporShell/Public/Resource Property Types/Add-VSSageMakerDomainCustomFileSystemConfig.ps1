function Add-VSSageMakerDomainCustomFileSystemConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Domain.CustomFileSystemConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Domain.CustomFileSystemConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-customfilesystemconfig.html

    .PARAMETER EFSFileSystemConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-customfilesystemconfig.html#cfn-sagemaker-domain-customfilesystemconfig-efsfilesystemconfig
        UpdateType: Mutable
        Type: EFSFileSystemConfig

    .PARAMETER FSxLustreFileSystemConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-customfilesystemconfig.html#cfn-sagemaker-domain-customfilesystemconfig-fsxlustrefilesystemconfig
        UpdateType: Mutable
        Type: FSxLustreFileSystemConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Domain.CustomFileSystemConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EFSFileSystemConfig,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Domain.CustomFileSystemConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
