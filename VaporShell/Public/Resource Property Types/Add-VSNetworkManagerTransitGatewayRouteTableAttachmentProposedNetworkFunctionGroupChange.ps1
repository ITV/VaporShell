function Add-VSNetworkManagerTransitGatewayRouteTableAttachmentProposedNetworkFunctionGroupChange {
    <#
    .SYNOPSIS
        Adds an AWS::NetworkManager::TransitGatewayRouteTableAttachment.ProposedNetworkFunctionGroupChange resource property to the template.

    .DESCRIPTION
        Adds an AWS::NetworkManager::TransitGatewayRouteTableAttachment.ProposedNetworkFunctionGroupChange resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange.html

    .PARAMETER Tags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange.html#cfn-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange-tags
        UpdateType: Mutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: False

    .PARAMETER NetworkFunctionGroupName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange.html#cfn-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange-networkfunctiongroupname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AttachmentPolicyRuleNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange.html#cfn-networkmanager-transitgatewayroutetableattachment-proposednetworkfunctiongroupchange-attachmentpolicyrulenumber
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.NetworkManager.TransitGatewayRouteTableAttachment.ProposedNetworkFunctionGroupChange')]
    [cmdletbinding()]

    Param
    (
        [VaporShell.Core.TransformTag()]
        [Parameter(Mandatory = $false)]
        $Tags,

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
        $NetworkFunctionGroupName,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AttachmentPolicyRuleNumber

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NetworkManager.TransitGatewayRouteTableAttachment.ProposedNetworkFunctionGroupChange'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
