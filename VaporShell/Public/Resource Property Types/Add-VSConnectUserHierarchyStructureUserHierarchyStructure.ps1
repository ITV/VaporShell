function Add-VSConnectUserHierarchyStructureUserHierarchyStructure {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::UserHierarchyStructure.UserHierarchyStructure resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Connect::UserHierarchyStructure.UserHierarchyStructure resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-userhierarchystructure.html

    .PARAMETER LevelThree
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-userhierarchystructure.html#cfn-connect-userhierarchystructure-userhierarchystructure-levelthree
        UpdateType: Mutable
        Type: LevelThree

    .PARAMETER LevelTwo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-userhierarchystructure.html#cfn-connect-userhierarchystructure-userhierarchystructure-leveltwo
        UpdateType: Mutable
        Type: LevelTwo

    .PARAMETER LevelFive
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-userhierarchystructure.html#cfn-connect-userhierarchystructure-userhierarchystructure-levelfive
        UpdateType: Mutable
        Type: LevelFive

    .PARAMETER LevelFour
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-userhierarchystructure.html#cfn-connect-userhierarchystructure-userhierarchystructure-levelfour
        UpdateType: Mutable
        Type: LevelFour

    .PARAMETER LevelOne
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-userhierarchystructure-userhierarchystructure.html#cfn-connect-userhierarchystructure-userhierarchystructure-levelone
        UpdateType: Mutable
        Type: LevelOne

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Connect.UserHierarchyStructure.UserHierarchyStructure')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $LevelThree,
        [parameter(Mandatory = $false)]
        $LevelTwo,
        [parameter(Mandatory = $false)]
        $LevelFive,
        [parameter(Mandatory = $false)]
        $LevelFour,
        [parameter(Mandatory = $false)]
        $LevelOne
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.UserHierarchyStructure.UserHierarchyStructure'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
