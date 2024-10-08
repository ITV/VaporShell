function Add-VSSageMakerSpaceSpaceAppLifecycleManagement {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Space.SpaceAppLifecycleManagement resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Space.SpaceAppLifecycleManagement resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spaceapplifecyclemanagement.html

    .PARAMETER IdleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-space-spaceapplifecyclemanagement.html#cfn-sagemaker-space-spaceapplifecyclemanagement-idlesettings
        UpdateType: Mutable
        Type: SpaceIdleSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Space.SpaceAppLifecycleManagement')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IdleSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Space.SpaceAppLifecycleManagement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
