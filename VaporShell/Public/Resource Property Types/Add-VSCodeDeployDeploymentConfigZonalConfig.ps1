function Add-VSCodeDeployDeploymentConfigZonalConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CodeDeploy::DeploymentConfig.ZonalConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::CodeDeploy::DeploymentConfig.ZonalConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-zonalconfig.html

    .PARAMETER MonitorDurationInSeconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-zonalconfig.html#cfn-codedeploy-deploymentconfig-zonalconfig-monitordurationinseconds
        UpdateType: Immutable
        PrimitiveType: Long

    .PARAMETER MinimumHealthyHostsPerZone
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-zonalconfig.html#cfn-codedeploy-deploymentconfig-zonalconfig-minimumhealthyhostsperzone
        UpdateType: Immutable
        Type: MinimumHealthyHostsPerZone

    .PARAMETER FirstZoneMonitorDurationInSeconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-zonalconfig.html#cfn-codedeploy-deploymentconfig-zonalconfig-firstzonemonitordurationinseconds
        UpdateType: Immutable
        PrimitiveType: Long

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CodeDeploy.DeploymentConfig.ZonalConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MonitorDurationInSeconds,

        [Parameter(Mandatory = $false)]
        $MinimumHealthyHostsPerZone,

        [Parameter(Mandatory = $false)]
        $FirstZoneMonitorDurationInSeconds

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeDeploy.DeploymentConfig.ZonalConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
