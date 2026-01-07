function Add-VSMediaConnectRouterInputMediaConnectFlowRouterInputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterInput.MediaConnectFlowRouterInputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterInput.MediaConnectFlowRouterInputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration.html

    .PARAMETER FlowOutputArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration.html#cfn-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration-flowoutputarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SourceTransitDecryption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration.html#cfn-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration-sourcetransitdecryption
        UpdateType: Mutable
        Type: FlowTransitEncryption

    .PARAMETER FlowArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration.html#cfn-mediaconnect-routerinput-mediaconnectflowrouterinputconfiguration-flowarn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterInput.MediaConnectFlowRouterInputConfiguration')]
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
        $FlowOutputArn,

        [Parameter(Mandatory = $true)]
        $SourceTransitDecryption,

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
        $FlowArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterInput.MediaConnectFlowRouterInputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
