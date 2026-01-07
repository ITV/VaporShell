function Add-VSCleanRoomsMembershipMembershipProtectedJobOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::Membership.MembershipProtectedJobOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::Membership.MembershipProtectedJobOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjoboutputconfiguration.html

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjoboutputconfiguration.html#cfn-cleanrooms-membership-membershipprotectedjoboutputconfiguration-s3
        UpdateType: Mutable
        Type: ProtectedJobS3OutputConfigurationInput

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.Membership.MembershipProtectedJobOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $S3

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.Membership.MembershipProtectedJobOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
