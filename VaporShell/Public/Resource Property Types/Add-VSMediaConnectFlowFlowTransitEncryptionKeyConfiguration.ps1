function Add-VSMediaConnectFlowFlowTransitEncryptionKeyConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::Flow.FlowTransitEncryptionKeyConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::Flow.FlowTransitEncryptionKeyConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-flowtransitencryptionkeyconfiguration.html

    .PARAMETER SecretsManager
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-flowtransitencryptionkeyconfiguration.html#cfn-mediaconnect-flow-flowtransitencryptionkeyconfiguration-secretsmanager
        UpdateType: Mutable
        Type: SecretsManagerEncryptionKeyConfiguration

    .PARAMETER Automatic
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-flowtransitencryptionkeyconfiguration.html#cfn-mediaconnect-flow-flowtransitencryptionkeyconfiguration-automatic
        UpdateType: Mutable
        PrimitiveType: Json

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.Flow.FlowTransitEncryptionKeyConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SecretsManager,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Automatic

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                'Automatic' {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.Flow.FlowTransitEncryptionKeyConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
