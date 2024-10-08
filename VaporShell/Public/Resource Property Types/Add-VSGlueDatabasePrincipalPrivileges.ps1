function Add-VSGlueDatabasePrincipalPrivileges {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::Database.PrincipalPrivileges resource property to the template.

    .DESCRIPTION
        Adds an AWS::Glue::Database.PrincipalPrivileges resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-principalprivileges.html

    .PARAMETER Permissions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-principalprivileges.html#cfn-glue-database-principalprivileges-permissions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Principal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-principalprivileges.html#cfn-glue-database-principalprivileges-principal
        UpdateType: Mutable
        Type: DataLakePrincipal

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Glue.Database.PrincipalPrivileges')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Permissions,

        [Parameter(Mandatory = $false)]
        $Principal

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.Database.PrincipalPrivileges'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
