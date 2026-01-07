function Add-VSSageMakerProjectTemplateProviderDetail {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Project.TemplateProviderDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Project.TemplateProviderDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-templateproviderdetail.html

    .PARAMETER CfnTemplateProviderDetail
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-project-templateproviderdetail.html#cfn-sagemaker-project-templateproviderdetail-cfntemplateproviderdetail
        UpdateType: Immutable
        Type: CfnTemplateProviderDetail

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Project.TemplateProviderDetail')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $CfnTemplateProviderDetail

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Project.TemplateProviderDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
