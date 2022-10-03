function Add-VSMSKClusterStorageInfo {
    <#
    .SYNOPSIS
        Adds an AWS::MSK::Cluster.StorageInfo resource property to the template. Contains information about storage volumes attached to MSK broker nodes.

    .DESCRIPTION
        Adds an AWS::MSK::Cluster.StorageInfo resource property to the template.
Contains information about storage volumes attached to MSK broker nodes.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html

    .PARAMETER EBSStorageInfo
        EBS volume information.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html#cfn-msk-cluster-storageinfo-ebsstorageinfo
        UpdateType: Mutable
        Type: EBSStorageInfo

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MSK.Cluster.StorageInfo')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $EBSStorageInfo
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MSK.Cluster.StorageInfo'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
