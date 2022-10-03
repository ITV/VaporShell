function Add-VSCodeDeployDeploymentGroupBlueGreenDeploymentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.BlueGreenDeploymentConfiguration resource property to the template. Information about blue/green deployment options for a deployment group.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.BlueGreenDeploymentConfiguration resource property to the template.
Information about blue/green deployment options for a deployment group.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html

    .PARAMETER DeploymentReadyOption
        Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-deploymentreadyoption
        Type: DeploymentReadyOption
        UpdateType: Mutable

    .PARAMETER GreenFleetProvisioningOption
        Information about how instances are provisioned for a replacement environment in a blue/green deployment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-greenfleetprovisioningoption
        Type: GreenFleetProvisioningOption
        UpdateType: Mutable

    .PARAMETER TerminateBlueInstancesOnDeploymentSuccess
        Information about whether to terminate instances in the original fleet during a blue/green deployment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-terminateblueinstancesondeploymentsuccess
        Type: BlueInstanceTerminationOption
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentGroup.BlueGreenDeploymentConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DeploymentReadyOption,
        [parameter(Mandatory = $false)]
        $GreenFleetProvisioningOption,
        [parameter(Mandatory = $false)]
        $TerminateBlueInstancesOnDeploymentSuccess
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentGroup.BlueGreenDeploymentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
