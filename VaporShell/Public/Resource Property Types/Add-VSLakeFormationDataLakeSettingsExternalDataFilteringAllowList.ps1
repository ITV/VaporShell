function Add-VSLakeFormationDataLakeSettingsExternalDataFilteringAllowList {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::DataLakeSettings.ExternalDataFilteringAllowList resource property to the template.

    .DESCRIPTION
        Adds an AWS::LakeFormation::DataLakeSettings.ExternalDataFilteringAllowList resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-externaldatafilteringallowlist.html

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.LakeFormation.DataLakeSettings.ExternalDataFilteringAllowList')]
    [cmdletbinding()]

    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.DataLakeSettings.ExternalDataFilteringAllowList'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
