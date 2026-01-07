function Add-VSMediaConnectRouterOutputSrtEncryptionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterOutput.SrtEncryptionConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterOutput.SrtEncryptionConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-srtencryptionconfiguration.html

    .PARAMETER EncryptionKey
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-srtencryptionconfiguration.html#cfn-mediaconnect-routeroutput-srtencryptionconfiguration-encryptionkey
        UpdateType: Mutable
        Type: SecretsManagerEncryptionKeyConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterOutput.SrtEncryptionConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $EncryptionKey

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterOutput.SrtEncryptionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
