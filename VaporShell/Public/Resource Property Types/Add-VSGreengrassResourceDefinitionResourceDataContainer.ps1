function Add-VSGreengrassResourceDefinitionResourceDataContainer {
    <#
    .SYNOPSIS
        Adds an AWS::Greengrass::ResourceDefinition.ResourceDataContainer resource property to the template.

    .DESCRIPTION
        Adds an AWS::Greengrass::ResourceDefinition.ResourceDataContainer resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html

    .PARAMETER SecretsManagerSecretResourceData
        Type: SecretsManagerSecretResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-secretsmanagersecretresourcedata
        UpdateType: Immutable

    .PARAMETER SageMakerMachineLearningModelResourceData
        Type: SageMakerMachineLearningModelResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-sagemakermachinelearningmodelresourcedata
        UpdateType: Immutable

    .PARAMETER LocalVolumeResourceData
        Type: LocalVolumeResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localvolumeresourcedata
        UpdateType: Immutable

    .PARAMETER LocalDeviceResourceData
        Type: LocalDeviceResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localdeviceresourcedata
        UpdateType: Immutable

    .PARAMETER S3MachineLearningModelResourceData
        Type: S3MachineLearningModelResourceData
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-s3machinelearningmodelresourcedata
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDataContainer')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SecretsManagerSecretResourceData,

        [Parameter(Mandatory = $false)]
        $SageMakerMachineLearningModelResourceData,

        [Parameter(Mandatory = $false)]
        $LocalVolumeResourceData,

        [Parameter(Mandatory = $false)]
        $LocalDeviceResourceData,

        [Parameter(Mandatory = $false)]
        $S3MachineLearningModelResourceData

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Greengrass.ResourceDefinition.ResourceDataContainer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
