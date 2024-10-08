function Add-VSCodeDeployDeploymentGroupBlueGreenDeploymentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentGroup.BlueGreenDeploymentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentGroup.BlueGreenDeploymentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html

    .PARAMETER DeploymentReadyOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-deploymentreadyoption
        Type: DeploymentReadyOption
        UpdateType: Mutable

    .PARAMETER GreenFleetProvisioningOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-bluegreendeploymentconfiguration.html#cfn-codedeploy-deploymentgroup-bluegreendeploymentconfiguration-greenfleetprovisioningoption
        Type: GreenFleetProvisioningOption
        UpdateType: Mutable

    .PARAMETER TerminateBlueInstancesOnDeploymentSuccess
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
        [Parameter(Mandatory = $false)]
        $DeploymentReadyOption,

        [Parameter(Mandatory = $false)]
        $GreenFleetProvisioningOption,

        [Parameter(Mandatory = $false)]
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
