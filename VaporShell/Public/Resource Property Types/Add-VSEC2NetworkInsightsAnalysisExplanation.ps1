function Add-VSEC2NetworkInsightsAnalysisExplanation {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInsightsAnalysis.Explanation resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInsightsAnalysis.Explanation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html

    .PARAMETER VpnGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpngateway
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER PacketField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-packetfield
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TransitGatewayAttachment
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgatewayattachment
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Protocols
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-protocols
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER IngressRouteTable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-ingressroutetable
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER ClassicLoadBalancerListener
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-classicloadbalancerlistener
        UpdateType: Mutable
        Type: AnalysisLoadBalancerListener

    .PARAMETER VpcPeeringConnection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpcpeeringconnection
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Address
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-address
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Port
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-port
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Addresses
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-addresses
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ElasticLoadBalancerListener
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-elasticloadbalancerlistener
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER TransitGatewayRouteTable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgatewayroutetable
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER ExplanationCode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-explanationcode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER InternetGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-internetgateway
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER SourceVpc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-sourcevpc
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER AttachedTo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-attachedto
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER PrefixList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-prefixlist
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER TransitGatewayRouteTableRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgatewayroutetableroute
        UpdateType: Mutable
        Type: TransitGatewayRouteTableRoute

    .PARAMETER ComponentRegion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-componentregion
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LoadBalancerTargetGroup
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertargetgroup
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER NetworkInterface
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-networkinterface
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER CustomerGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-customergateway
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER DestinationVpc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-destinationvpc
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER SecurityGroup
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-securitygroup
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER TransitGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-transitgateway
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER RouteTable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-routetable
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER State
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-state
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LoadBalancerListenerPort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancerlistenerport
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER vpcEndpoint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpcendpoint
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Subnet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-subnet
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Cidrs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-cidrs
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Destination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-destination
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER SecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-securitygroups
        UpdateType: Mutable
        Type: List
        ItemType: AnalysisComponent
        DuplicatesAllowed: True

    .PARAMETER ComponentAccount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-componentaccount
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER VpnConnection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpnconnection
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Vpc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-vpc
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER NatGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-natgateway
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Direction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-direction
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LoadBalancerTargetPort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertargetport
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER LoadBalancerTarget
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertarget
        UpdateType: Mutable
        Type: AnalysisLoadBalancerTarget

    .PARAMETER LoadBalancerTargetGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancertargetgroups
        UpdateType: Mutable
        Type: List
        ItemType: AnalysisComponent
        DuplicatesAllowed: True

    .PARAMETER Component
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-component
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER MissingComponent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-missingcomponent
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RouteTableRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-routetableroute
        UpdateType: Mutable
        Type: AnalysisRouteTableRoute

    .PARAMETER AvailabilityZones
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-availabilityzones
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER PortRanges
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-portranges
        UpdateType: Mutable
        Type: List
        ItemType: PortRange
        DuplicatesAllowed: True

    .PARAMETER Acl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-acl
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER SecurityGroupRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-securitygrouprule
        UpdateType: Mutable
        Type: AnalysisSecurityGroupRule

    .PARAMETER SubnetRouteTable
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-subnetroutetable
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER LoadBalancerArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-loadbalancerarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AclRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-explanation.html#cfn-ec2-networkinsightsanalysis-explanation-aclrule
        UpdateType: Mutable
        Type: AnalysisAclRule

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.NetworkInsightsAnalysis.Explanation')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $VpnGateway,

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
        $PacketField,

        [Parameter(Mandatory = $false)]
        $TransitGatewayAttachment,

        [Parameter(Mandatory = $false)]
        $Protocols,

        [Parameter(Mandatory = $false)]
        $IngressRouteTable,

        [Parameter(Mandatory = $false)]
        $ClassicLoadBalancerListener,

        [Parameter(Mandatory = $false)]
        $VpcPeeringConnection,

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
        $Address,

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
        $Port,

        [Parameter(Mandatory = $false)]
        $Addresses,

        [Parameter(Mandatory = $false)]
        $ElasticLoadBalancerListener,

        [Parameter(Mandatory = $false)]
        $TransitGatewayRouteTable,

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
        $ExplanationCode,

        [Parameter(Mandatory = $false)]
        $InternetGateway,

        [Parameter(Mandatory = $false)]
        $SourceVpc,

        [Parameter(Mandatory = $false)]
        $AttachedTo,

        [Parameter(Mandatory = $false)]
        $PrefixList,

        [Parameter(Mandatory = $false)]
        $TransitGatewayRouteTableRoute,

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
        $ComponentRegion,

        [Parameter(Mandatory = $false)]
        $LoadBalancerTargetGroup,

        [Parameter(Mandatory = $false)]
        $NetworkInterface,

        [Parameter(Mandatory = $false)]
        $CustomerGateway,

        [Parameter(Mandatory = $false)]
        $DestinationVpc,

        [Parameter(Mandatory = $false)]
        $SecurityGroup,

        [Parameter(Mandatory = $false)]
        $TransitGateway,

        [Parameter(Mandatory = $false)]
        $RouteTable,

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
        $State,

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
        $LoadBalancerListenerPort,

        [Parameter(Mandatory = $false)]
        $vpcEndpoint,

        [Parameter(Mandatory = $false)]
        $Subnet,

        [Parameter(Mandatory = $false)]
        $Cidrs,

        [Parameter(Mandatory = $false)]
        $Destination,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.NetworkInsightsAnalysis.AnalysisComponent"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecurityGroups,

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
        $ComponentAccount,

        [Parameter(Mandatory = $false)]
        $VpnConnection,

        [Parameter(Mandatory = $false)]
        $Vpc,

        [Parameter(Mandatory = $false)]
        $NatGateway,

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
        $Direction,

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
        $LoadBalancerTargetPort,

        [Parameter(Mandatory = $false)]
        $LoadBalancerTarget,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.NetworkInsightsAnalysis.AnalysisComponent"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LoadBalancerTargetGroups,

        [Parameter(Mandatory = $false)]
        $Component,

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
        $MissingComponent,

        [Parameter(Mandatory = $false)]
        $RouteTableRoute,

        [Parameter(Mandatory = $false)]
        $AvailabilityZones,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.NetworkInsightsAnalysis.PortRange"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PortRanges,

        [Parameter(Mandatory = $false)]
        $Acl,

        [Parameter(Mandatory = $false)]
        $SecurityGroupRule,

        [Parameter(Mandatory = $false)]
        $SubnetRouteTable,

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
        $LoadBalancerArn,

        [Parameter(Mandatory = $false)]
        $AclRule

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkInsightsAnalysis.Explanation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
