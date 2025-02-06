function Add-VSCleanRoomsCollaborationMLMemberAbilities {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::Collaboration.MLMemberAbilities resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::Collaboration.MLMemberAbilities resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlmemberabilities.html

    .PARAMETER CustomMLMemberAbilities
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-mlmemberabilities.html#cfn-cleanrooms-collaboration-mlmemberabilities-custommlmemberabilities
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.Collaboration.MLMemberAbilities')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $CustomMLMemberAbilities

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.Collaboration.MLMemberAbilities'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
