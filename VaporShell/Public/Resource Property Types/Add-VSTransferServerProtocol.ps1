function Add-VSTransferServerProtocol {
    <#
    .SYNOPSIS
        Adds an AWS::Transfer::Server.Protocol resource property to the template. Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:

    .DESCRIPTION
        Adds an AWS::Transfer::Server.Protocol resource property to the template.
Specifies the file transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint. The available protocols are:

+  SFTP (Secure Shell (SSH File Transfer Protocol: File transfer over SSH

+  FTPS (File Transfer Protocol Secure: File transfer with TLS encryption

+  FTP (File Transfer Protocol: Unencrypted file transfer

**Note**

If you select FTPS, you must choose a certificate stored in AWS Certificate Manager (ACM which is used to identify your server when clients connect to it over FTPS.

If Protocol includes either FTP or FTPS, then the EndpointType must be VPC and the IdentityProviderType must be AWS_DIRECTORY_SERVICE or API_GATEWAY.

If Protocol includes FTP, then AddressAllocationIds cannot be associated.

If Protocol is set only to SFTP, the EndpointType can be set to PUBLIC and the IdentityProviderType can be set to SERVICE_MANAGED.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-protocol.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Transfer.Server.Protocol')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Transfer.Server.Protocol'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
