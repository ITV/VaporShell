function Add-VSMediaLiveChannelVpcOutputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.VpcOutputSettings resource property to the template. Settings to enable VPC mode in the channel, so that the endpoints for all outputs are in your VPC.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.VpcOutputSettings resource property to the template.
Settings to enable VPC mode in the channel, so that the endpoints for all outputs are in your VPC.

This entity is at the top level in the channel.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html

    .PARAMETER PublicAddressAllocationIds
        List of public address allocation IDs to associate with ENIs that will be created in Output VPC. Must specify one for SINGLE_PIPELINE, two for STANDARD channels

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html#cfn-medialive-channel-vpcoutputsettings-publicaddressallocationids
        UpdateType: Mutable

    .PARAMETER SecurityGroupIds
        A list of up to 5 EC2 VPC security group IDs to attach to the Output VPC network interfaces. If none are specified then the VPC default security group will be used

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html#cfn-medialive-channel-vpcoutputsettings-securitygroupids
        UpdateType: Mutable

    .PARAMETER SubnetIds
        A list of VPC subnet IDs from the same VPC. If STANDARD channel, subnet IDs must be mapped to two unique availability zones AZ.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html#cfn-medialive-channel-vpcoutputsettings-subnetids
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.VpcOutputSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PublicAddressAllocationIds,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.VpcOutputSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
