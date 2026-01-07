function Add-VSODBOdbNetworkManagedS3BackupAccess {
    <#
    .SYNOPSIS
        Adds an AWS::ODB::OdbNetwork.ManagedS3BackupAccess resource property to the template.

    .DESCRIPTION
        Adds an AWS::ODB::OdbNetwork.ManagedS3BackupAccess resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-manageds3backupaccess.html

    .PARAMETER Status
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-manageds3backupaccess.html#cfn-odb-odbnetwork-manageds3backupaccess-status
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Ipv4Addresses
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-manageds3backupaccess.html#cfn-odb-odbnetwork-manageds3backupaccess-ipv4addresses
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ODB.OdbNetwork.ManagedS3BackupAccess')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Status,

        [Parameter(Mandatory = $false)]
        $Ipv4Addresses

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ODB.OdbNetwork.ManagedS3BackupAccess'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
