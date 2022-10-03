function Add-VSGlueDatabasePrincipalPrivileges {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::Database.PrincipalPrivileges resource property to the template. the permissions granted to a principal

    .DESCRIPTION
        Adds an AWS::Glue::Database.PrincipalPrivileges resource property to the template.
the permissions granted to a principal

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-principalprivileges.html

    .PARAMETER Permissions
        The permissions that are granted to the principal.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-principalprivileges.html#cfn-glue-database-principalprivileges-permissions
        UpdateType: Mutable

    .PARAMETER Principal
        The principal who is granted permissions.

        Type: DataLakePrincipal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-database-principalprivileges.html#cfn-glue-database-principalprivileges-principal
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Glue.Database.PrincipalPrivileges')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Permissions,
        [parameter(Mandatory = $false)]
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
