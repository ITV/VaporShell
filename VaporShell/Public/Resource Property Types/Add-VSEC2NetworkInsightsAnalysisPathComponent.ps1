function Add-VSEC2NetworkInsightsAnalysisPathComponent {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::NetworkInsightsAnalysis.PathComponent resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::NetworkInsightsAnalysis.PathComponent resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html

    .PARAMETER AdditionalDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-additionaldetails
        UpdateType: Mutable
        Type: List
        ItemType: AdditionalDetail
        DuplicatesAllowed: True

    .PARAMETER InboundHeader
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-inboundheader
        UpdateType: Mutable
        Type: AnalysisPacketHeader

    .PARAMETER Vpc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-vpc
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER DestinationVpc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-destinationvpc
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER SecurityGroupRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-securitygrouprule
        UpdateType: Mutable
        Type: AnalysisSecurityGroupRule

    .PARAMETER TransitGateway
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-transitgateway
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER ElasticLoadBalancerListener
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-elasticloadbalancerlistener
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Explanations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-explanations
        UpdateType: Mutable
        Type: List
        ItemType: Explanation
        DuplicatesAllowed: True

    .PARAMETER ServiceName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-servicename
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SequenceNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-sequencenumber
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER SourceVpc
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-sourcevpc
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER OutboundHeader
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-outboundheader
        UpdateType: Mutable
        Type: AnalysisPacketHeader

    .PARAMETER AclRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-aclrule
        UpdateType: Mutable
        Type: AnalysisAclRule

    .PARAMETER TransitGatewayRouteTableRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-transitgatewayroutetableroute
        UpdateType: Mutable
        Type: TransitGatewayRouteTableRoute

    .PARAMETER Component
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-component
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER Subnet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-subnet
        UpdateType: Mutable
        Type: AnalysisComponent

    .PARAMETER RouteTableRoute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinsightsanalysis-pathcomponent.html#cfn-ec2-networkinsightsanalysis-pathcomponent-routetableroute
        UpdateType: Mutable
        Type: AnalysisRouteTableRoute

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.NetworkInsightsAnalysis.PathComponent')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.NetworkInsightsAnalysis.AdditionalDetail"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AdditionalDetails,

        [Parameter(Mandatory = $false)]
        $InboundHeader,

        [Parameter(Mandatory = $false)]
        $Vpc,

        [Parameter(Mandatory = $false)]
        $DestinationVpc,

        [Parameter(Mandatory = $false)]
        $SecurityGroupRule,

        [Parameter(Mandatory = $false)]
        $TransitGateway,

        [Parameter(Mandatory = $false)]
        $ElasticLoadBalancerListener,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.NetworkInsightsAnalysis.Explanation"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Explanations,

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
        $ServiceName,

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
        $SequenceNumber,

        [Parameter(Mandatory = $false)]
        $SourceVpc,

        [Parameter(Mandatory = $false)]
        $OutboundHeader,

        [Parameter(Mandatory = $false)]
        $AclRule,

        [Parameter(Mandatory = $false)]
        $TransitGatewayRouteTableRoute,

        [Parameter(Mandatory = $false)]
        $Component,

        [Parameter(Mandatory = $false)]
        $Subnet,

        [Parameter(Mandatory = $false)]
        $RouteTableRoute

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.NetworkInsightsAnalysis.PathComponent'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
