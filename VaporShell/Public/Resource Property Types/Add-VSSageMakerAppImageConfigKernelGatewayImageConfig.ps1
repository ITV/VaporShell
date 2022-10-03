function Add-VSSageMakerAppImageConfigKernelGatewayImageConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::AppImageConfig.KernelGatewayImageConfig resource property to the template. The configuration for the file system and kernels in a SageMaker image running as a KernelGateway app.

    .DESCRIPTION
        Adds an AWS::SageMaker::AppImageConfig.KernelGatewayImageConfig resource property to the template.
The configuration for the file system and kernels in a SageMaker image running as a KernelGateway app.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-kernelgatewayimageconfig.html

    .PARAMETER FileSystemConfig
        The Amazon Elastic File System EFS storage configuration for a SageMaker image.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-kernelgatewayimageconfig.html#cfn-sagemaker-appimageconfig-kernelgatewayimageconfig-filesystemconfig
        UpdateType: Mutable
        Type: FileSystemConfig

    .PARAMETER KernelSpecs
        The specification of the Jupyter kernels in the image.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-kernelgatewayimageconfig.html#cfn-sagemaker-appimageconfig-kernelgatewayimageconfig-kernelspecs
        UpdateType: Mutable
        Type: List
        ItemType: KernelSpec

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.AppImageConfig.KernelGatewayImageConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FileSystemConfig,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.AppImageConfig.KernelSpec"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KernelSpecs
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.AppImageConfig.KernelGatewayImageConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
