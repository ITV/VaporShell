function Add-VSFSxFileSystemClientConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::FSx::FileSystem.ClientConfigurations resource property to the template. Specifies who can mount the file system and the options that can be used while mounting the file system.

    .DESCRIPTION
        Adds an AWS::FSx::FileSystem.ClientConfigurations resource property to the template.
Specifies who can mount the file system and the options that can be used while mounting the file system.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-nfsexports-clientconfigurations.html

    .PARAMETER Options
        The options to use when mounting the file system. For a list of options that you can use with Network File System NFS, see the exports5 - Linux man page: https://linux.die.net/man/5/exports. When choosing your options, consider the following:
+  crossmnt is used by default. If you don't specify crossmnt when changing the client configuration, you won't be able to see or access snapshots in your file system's snapshot directory.
+  sync is used by default. If you instead specify async, the system acknowledges writes before writing to disk. If the system crashes before the writes are finished, you lose the unwritten data.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-nfsexports-clientconfigurations.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-nfsexports-clientconfigurations-options
        UpdateType: Immutable

    .PARAMETER Clients
        A value that specifies who can mount the file system. You can provide a wildcard character *, an IP address 0.0.0.0, or a CIDR address 192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-nfsexports-clientconfigurations.html#cfn-fsx-filesystem-openzfsconfiguration-rootvolumeconfiguration-nfsexports-clientconfigurations-clients
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.FSx.FileSystem.ClientConfigurations')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Options,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Clients
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FSx.FileSystem.ClientConfigurations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
