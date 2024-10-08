function Add-VSDataZoneDataSourceRedshiftStorage {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::DataSource.RedshiftStorage resource property to the template. 

    .DESCRIPTION
        Adds an AWS::DataZone::DataSource.RedshiftStorage resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftstorage.html

    .PARAMETER RedshiftClusterSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftstorage.html#cfn-datazone-datasource-redshiftstorage-redshiftclustersource
        UpdateType: Mutable
        Type: RedshiftClusterStorage

    .PARAMETER RedshiftServerlessSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-datasource-redshiftstorage.html#cfn-datazone-datasource-redshiftstorage-redshiftserverlesssource
        UpdateType: Mutable
        Type: RedshiftServerlessStorage

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DataZone.DataSource.RedshiftStorage')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $RedshiftClusterSource,
        [parameter(Mandatory = $false)]
        $RedshiftServerlessSource
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.DataSource.RedshiftStorage'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
