function Add-VSEC2TransitGatewayConnectPeerTransitGatewayConnectPeerConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::TransitGatewayConnectPeer.TransitGatewayConnectPeerConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::TransitGatewayConnectPeer.TransitGatewayConnectPeerConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html

    .PARAMETER TransitGatewayAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-transitgatewayaddress
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER BgpConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-bgpconfigurations
        UpdateType: Immutable
        Type: List
        ItemType: TransitGatewayAttachmentBgpConfiguration
        DuplicatesAllowed: True

    .PARAMETER PeerAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-peeraddress
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER InsideCidrBlocks
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-insidecidrblocks
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Protocol
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration.html#cfn-ec2-transitgatewayconnectpeer-transitgatewayconnectpeerconfiguration-protocol
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.TransitGatewayConnectPeer.TransitGatewayConnectPeerConfiguration')]
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
        $TransitGatewayAddress,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.TransitGatewayConnectPeer.TransitGatewayAttachmentBgpConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $BgpConfigurations,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PeerAddress,

        [Parameter(Mandatory = $true)]
        $InsideCidrBlocks,

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
        $Protocol

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.TransitGatewayConnectPeer.TransitGatewayConnectPeerConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
