function Add-VSEC2EC2FleetFleetLaunchTemplateConfigRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest resource property to the template. Specifies a launch template and overrides for an EC2 Fleet.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.FleetLaunchTemplateConfigRequest resource property to the template.
Specifies a launch template and overrides for an EC2 Fleet.

FleetLaunchTemplateConfigRequest is a property of the AWS::EC2::EC2Fleet: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ec2fleet.html resource.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html

    .PARAMETER LaunchTemplateSpecification
        The launch template to use. You must specify either the launch template ID or launch template name in the request.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-launchtemplatespecification
        UpdateType: Immutable
        Type: FleetLaunchTemplateSpecificationRequest

    .PARAMETER Overrides
        Any parameters that you specify override the same parameters in the launch template.
For fleets of type request and maintain, a maximum of 300 items is allowed across all launch templates.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-overrides
        UpdateType: Immutable
        Type: List
        ItemType: FleetLaunchTemplateOverridesRequest
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.FleetLaunchTemplateConfigRequest')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $LaunchTemplateSpecification,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EC2.EC2Fleet.FleetLaunchTemplateOverridesRequest"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Overrides
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.FleetLaunchTemplateConfigRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
