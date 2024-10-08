function Add-VSSageMakerUserProfileDefaultSpaceStorageSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::UserProfile.DefaultSpaceStorageSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::UserProfile.DefaultSpaceStorageSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-defaultspacestoragesettings.html

    .PARAMETER DefaultEbsStorageSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-defaultspacestoragesettings.html#cfn-sagemaker-userprofile-defaultspacestoragesettings-defaultebsstoragesettings
        UpdateType: Mutable
        Type: DefaultEbsStorageSettings

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.UserProfile.DefaultSpaceStorageSettings')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DefaultEbsStorageSettings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.UserProfile.DefaultSpaceStorageSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
