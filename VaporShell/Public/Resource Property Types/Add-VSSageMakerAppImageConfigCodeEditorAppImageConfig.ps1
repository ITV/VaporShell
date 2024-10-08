function Add-VSSageMakerAppImageConfigCodeEditorAppImageConfig {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::AppImageConfig.CodeEditorAppImageConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::AppImageConfig.CodeEditorAppImageConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-codeeditorappimageconfig.html

    .PARAMETER ContainerConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-appimageconfig-codeeditorappimageconfig.html#cfn-sagemaker-appimageconfig-codeeditorappimageconfig-containerconfig
        UpdateType: Mutable
        Type: ContainerConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.AppImageConfig.CodeEditorAppImageConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ContainerConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.AppImageConfig.CodeEditorAppImageConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
