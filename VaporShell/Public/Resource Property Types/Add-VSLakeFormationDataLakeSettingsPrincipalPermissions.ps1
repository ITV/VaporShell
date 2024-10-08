function Add-VSLakeFormationDataLakeSettingsPrincipalPermissions {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::DataLakeSettings.PrincipalPermissions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::LakeFormation::DataLakeSettings.PrincipalPermissions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-principalpermissions.html

    .PARAMETER Permissions
        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-principalpermissions.html#cfn-lakeformation-datalakesettings-principalpermissions-permissions
        UpdateType: Mutable

    .PARAMETER Principal
        Type: DataLakePrincipal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-principalpermissions.html#cfn-lakeformation-datalakesettings-principalpermissions-principal
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LakeFormation.DataLakeSettings.PrincipalPermissions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Permissions,
        [parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.DataLakeSettings.PrincipalPermissions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
