function Add-VSMediaConnectFlowOutputFlowTransitEncryption {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::FlowOutput.FlowTransitEncryption resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::FlowOutput.FlowTransitEncryption resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-flowtransitencryption.html

    .PARAMETER EncryptionKeyType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-flowtransitencryption.html#cfn-mediaconnect-flowoutput-flowtransitencryption-encryptionkeytype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER EncryptionKeyConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-flowtransitencryption.html#cfn-mediaconnect-flowoutput-flowtransitencryption-encryptionkeyconfiguration
        UpdateType: Mutable
        Type: FlowTransitEncryptionKeyConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.FlowOutput.FlowTransitEncryption')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.FlowOutput.FlowTransitEncryption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
