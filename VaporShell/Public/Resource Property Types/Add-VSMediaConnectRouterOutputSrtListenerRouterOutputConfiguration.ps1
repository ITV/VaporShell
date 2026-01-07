function Add-VSMediaConnectRouterOutputSrtListenerRouterOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterOutput.SrtListenerRouterOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterOutput.SrtListenerRouterOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration.html

    .PARAMETER EncryptionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration.html#cfn-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration-encryptionconfiguration
        UpdateType: Mutable
        Type: SrtEncryptionConfiguration

    .PARAMETER Port
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration.html#cfn-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration-port
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MinimumLatencyMilliseconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration.html#cfn-mediaconnect-routeroutput-srtlistenerrouteroutputconfiguration-minimumlatencymilliseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterOutput.SrtListenerRouterOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EncryptionConfiguration,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Port,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MinimumLatencyMilliseconds

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterOutput.SrtListenerRouterOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
