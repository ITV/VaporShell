function Add-VSRTBFabricResponderGatewayManagedEndpointConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::ResponderGateway.ManagedEndpointConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::ResponderGateway.ManagedEndpointConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-managedendpointconfiguration.html

    .PARAMETER EksEndpointsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-managedendpointconfiguration.html#cfn-rtbfabric-respondergateway-managedendpointconfiguration-eksendpointsconfiguration
        UpdateType: Conditional
        Type: EksEndpointsConfiguration

    .PARAMETER AutoScalingGroupsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-managedendpointconfiguration.html#cfn-rtbfabric-respondergateway-managedendpointconfiguration-autoscalinggroupsconfiguration
        UpdateType: Conditional
        Type: AutoScalingGroupsConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.ResponderGateway.ManagedEndpointConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EksEndpointsConfiguration,

        [Parameter(Mandatory = $false)]
        $AutoScalingGroupsConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.ResponderGateway.ManagedEndpointConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
