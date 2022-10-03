function Add-VSIoTSiteWiseAccessPolicyAccessPolicyIdentity {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AccessPolicy.AccessPolicyIdentity resource property to the template. The identity (AWS SSO user, AWS SSO group, or IAM user to which this access policy applies.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AccessPolicy.AccessPolicyIdentity resource property to the template.
The identity (AWS SSO user, AWS SSO group, or IAM user to which this access policy applies.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyidentity.html

    .PARAMETER User
        The AWS SSO user to which this access policy maps.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyidentity.html#cfn-iotsitewise-accesspolicy-accesspolicyidentity-user
        UpdateType: Mutable
        Type: User

    .PARAMETER IamUser
        An IAM user identity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyidentity.html#cfn-iotsitewise-accesspolicy-accesspolicyidentity-iamuser
        UpdateType: Mutable
        Type: IamUser

    .PARAMETER IamRole
        An IAM role identity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyidentity.html#cfn-iotsitewise-accesspolicy-accesspolicyidentity-iamrole
        UpdateType: Mutable
        Type: IamRole

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AccessPolicy.AccessPolicyIdentity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $User,
        [parameter(Mandatory = $false)]
        $IamUser,
        [parameter(Mandatory = $false)]
        $IamRole
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AccessPolicy.AccessPolicyIdentity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
