function Add-VSCleanRoomsMembershipMembershipProtectedJobResultConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::Membership.MembershipProtectedJobResultConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::Membership.MembershipProtectedJobResultConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjobresultconfiguration.html

    .PARAMETER OutputConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjobresultconfiguration.html#cfn-cleanrooms-membership-membershipprotectedjobresultconfiguration-outputconfiguration
        UpdateType: Mutable
        Type: MembershipProtectedJobOutputConfiguration

    .PARAMETER RoleArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-membershipprotectedjobresultconfiguration.html#cfn-cleanrooms-membership-membershipprotectedjobresultconfiguration-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.Membership.MembershipProtectedJobResultConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $OutputConfiguration,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RoleArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.Membership.MembershipProtectedJobResultConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
