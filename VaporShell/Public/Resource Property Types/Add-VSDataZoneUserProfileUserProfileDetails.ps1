function Add-VSDataZoneUserProfileUserProfileDetails {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::UserProfile.UserProfileDetails resource property to the template. 

    .DESCRIPTION
        Adds an AWS::DataZone::UserProfile.UserProfileDetails resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-userprofiledetails.html

    .PARAMETER Iam
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-userprofiledetails.html#cfn-datazone-userprofile-userprofiledetails-iam
        UpdateType: Mutable
        Type: IamUserProfileDetails

    .PARAMETER Sso
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-userprofile-userprofiledetails.html#cfn-datazone-userprofile-userprofiledetails-sso
        UpdateType: Mutable
        Type: SsoUserProfileDetails

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataZone.UserProfile.UserProfileDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Iam,
        [parameter(Mandatory = $false)]
        $Sso
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.UserProfile.UserProfileDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
