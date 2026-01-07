function Add-VSMediaConnectRouterOutputMediaLiveTransitEncryption {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterOutput.MediaLiveTransitEncryption resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterOutput.MediaLiveTransitEncryption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialivetransitencryption.html

    .PARAMETER EncryptionKeyType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialivetransitencryption.html#cfn-mediaconnect-routeroutput-medialivetransitencryption-encryptionkeytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER EncryptionKeyConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialivetransitencryption.html#cfn-mediaconnect-routeroutput-medialivetransitencryption-encryptionkeyconfiguration
        UpdateType: Mutable
        Type: MediaLiveTransitEncryptionKeyConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterOutput.MediaLiveTransitEncryption')]
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
        $EncryptionKeyType,

        [Parameter(Mandatory = $true)]
        $EncryptionKeyConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterOutput.MediaLiveTransitEncryption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
