function Add-VSCleanRoomsMembershipMembershipMLPaymentConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::Membership.MembershipMLPaymentConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::Membership.MembershipMLPaymentConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmlpaymentconfig.html

    .PARAMETER ModelInference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmlpaymentconfig.html#cfn-cleanrooms-membership-membershipmlpaymentconfig-modelinference
        UpdateType: Mutable
        Type: MembershipModelInferencePaymentConfig

    .PARAMETER ModelTraining
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipmlpaymentconfig.html#cfn-cleanrooms-membership-membershipmlpaymentconfig-modeltraining
        UpdateType: Mutable
        Type: MembershipModelTrainingPaymentConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.Membership.MembershipMLPaymentConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ModelInference,

        [Parameter(Mandatory = $false)]
        $ModelTraining

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.Membership.MembershipMLPaymentConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
