function Add-VSTransferServerEndpointDetails {
    <#
    .SYNOPSIS
        Adds an AWS::Transfer::Server.EndpointDetails resource property to the template. The virtual private cloud (VPC endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.

    .DESCRIPTION
        Adds an AWS::Transfer::Server.EndpointDetails resource property to the template.
The virtual private cloud (VPC endpoint settings that are configured for your server. When you host your endpoint within your VPC, you can make it accessible only to resources within your VPC, or you can attach Elastic IP addresses and make it accessible to clients over the internet. Your VPC's default security groups are automatically assigned to your endpoint.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html

    .PARAMETER AddressAllocationIds
        A list of address allocation IDs that are required to attach an Elastic IP address to your server's endpoint.
This property can only be set when EndpointType is set to VPC and it is only valid in the UpdateServer API.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-addressallocationids
        UpdateType: Conditional

    .PARAMETER VpcId
        The VPC ID of the virtual private cloud in which the server's endpoint will be hosted.
This property can only be set when EndpointType is set to VPC.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER VpcEndpointId
        The ID of the VPC endpoint.
This property can only be set when EndpointType is set to VPC_ENDPOINT.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER SecurityGroupIds
        A list of security groups IDs that are available to attach to your server's endpoint.
This property can only be set when EndpointType is set to VPC.
You can edit the SecurityGroupIds property in the UpdateServer: https://docs.aws.amazon.com/transfer/latest/userguide/API_UpdateServer.html API only if you are changing the EndpointType from PUBLIC or VPC_ENDPOINT to VPC. To change security groups associated with your server's VPC endpoint after creation, use the Amazon EC2 ModifyVpcEndpoint: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyVpcEndpoint.html API.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-securitygroupids
        UpdateType: Mutable

    .PARAMETER SubnetIds
        A list of subnet IDs that are required to host your server endpoint in your VPC.
This property can only be set when EndpointType is set to VPC.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-subnetids
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Transfer.Server.EndpointDetails')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AddressAllocationIds,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcId,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VpcEndpointId,
        [parameter(Mandatory = $false)]
        $SecurityGroupIds,
        [parameter(Mandatory = $false)]
        $SubnetIds
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Transfer.Server.EndpointDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
