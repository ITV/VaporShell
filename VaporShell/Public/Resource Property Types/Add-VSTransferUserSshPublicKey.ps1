function Add-VSTransferUserSshPublicKey {
    <#
    .SYNOPSIS
        Adds an AWS::Transfer::User.SshPublicKey resource property to the template. Provides information about the public Secure Shell (SSH key that is associated with a user account for the specific file transfer protocol-enabled server (as identified by ServerId. The information returned includes the date the key was imported, the public key contents, and the public key ID. A user can store more than one SSH public key associated with their user name on a specific server.

    .DESCRIPTION
        Adds an AWS::Transfer::User.SshPublicKey resource property to the template.
Provides information about the public Secure Shell (SSH key that is associated with a user account for the specific file transfer protocol-enabled server (as identified by ServerId. The information returned includes the date the key was imported, the public key contents, and the public key ID. A user can store more than one SSH public key associated with their user name on a specific server.

## See also<a name="aws-properties-transfer-user-sshpublickey--seealso"></a>

SshPublicKey: https://docs.aws.amazon.com/transfer/latest/userguide/API_SshPublicKey.html in the *AWS Transfer Family User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-user-sshpublickey.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Transfer.User.SshPublicKey')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Transfer.User.SshPublicKey'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
