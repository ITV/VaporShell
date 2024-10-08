function Add-VSSageMakerUserProfileStudioWebPortalSettings {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::UserProfile.StudioWebPortalSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::UserProfile.StudioWebPortalSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-studiowebportalsettings.html

    .PARAMETER HiddenAppTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-studiowebportalsettings.html#cfn-sagemaker-userprofile-studiowebportalsettings-hiddenapptypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER HiddenMlTools
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-userprofile-studiowebportalsettings.html#cfn-sagemaker-userprofile-studiowebportalsettings-hiddenmltools
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.UserProfile.StudioWebPortalSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HiddenAppTypes,
        [parameter(Mandatory = $false)]
        $HiddenMlTools
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.UserProfile.StudioWebPortalSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
