function Add-VSEC2NetworkInsightsAccessScopePacketHeaderStatementRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInsightsAccessScope.PacketHeaderStatementRequest resource property to the template. Describes a packet header statement.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInsightsAccessScope.PacketHeaderStatementRequest resource property to the template.
Describes a packet header statement.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html

    .PARAMETER SourceAddresses
        The source addresses.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-sourceaddresses
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER DestinationAddresses
        The destination addresses.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-destinationaddresses
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SourcePorts
        The source ports.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-sourceports
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER DestinationPorts
        The destination ports.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-destinationports
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SourcePrefixLists
        The source prefix lists.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-sourceprefixlists
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER DestinationPrefixLists
        The destination prefix lists.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-destinationprefixlists
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER Protocols
        The protocols.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsaccessscope-packetheaderstatementrequest.html#cfn-ec2-networkinsightsaccessscope-packetheaderstatementrequest-protocols
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.NetworkInsightsAccessScope.PacketHeaderStatementRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SourceAddresses,
        [parameter(Mandatory = $false)]
        $DestinationAddresses,
        [parameter(Mandatory = $false)]
        $SourcePorts,
        [parameter(Mandatory = $false)]
        $DestinationPorts,
        [parameter(Mandatory = $false)]
        $SourcePrefixLists,
        [parameter(Mandatory = $false)]
        $DestinationPrefixLists,
        [parameter(Mandatory = $false)]
        $Protocols
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkInsightsAccessScope.PacketHeaderStatementRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
