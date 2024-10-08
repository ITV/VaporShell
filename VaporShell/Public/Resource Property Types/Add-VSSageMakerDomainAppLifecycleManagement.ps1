function Add-VSSageMakerDomainAppLifecycleManagement {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Domain.AppLifecycleManagement resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::Domain.AppLifecycleManagement resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-applifecyclemanagement.html

    .PARAMETER IdleSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-applifecyclemanagement.html#cfn-sagemaker-domain-applifecyclemanagement-idlesettings
        UpdateType: Mutable
        Type: IdleSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.Domain.AppLifecycleManagement')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Domain.AppLifecycleManagement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
