function Add-VSSageMakerDomainJupyterServerAppSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Domain.JupyterServerAppSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Domain.JupyterServerAppSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterserverappsettings.html

    .PARAMETER DefaultResourceSpec
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterserverappsettings.html#cfn-sagemaker-domain-jupyterserverappsettings-defaultresourcespec
        UpdateType: Mutable
        Type: ResourceSpec

    .PARAMETER LifecycleConfigArns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-jupyterserverappsettings.html#cfn-sagemaker-domain-jupyterserverappsettings-lifecycleconfigarns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Domain.JupyterServerAppSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DefaultResourceSpec,

        [Parameter(Mandatory = $false)]
        $LifecycleConfigArns

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Domain.JupyterServerAppSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
