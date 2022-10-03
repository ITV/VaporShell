function Add-VSLightsailContainerContainerServiceDeployment {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Container.ContainerServiceDeployment resource property to the template. ContainerServiceDeployment is a property of the AWS::Lightsail::Container: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html resource. It describes a container deployment configuration of a container service.

    .DESCRIPTION
        Adds an AWS::Lightsail::Container.ContainerServiceDeployment resource property to the template.
ContainerServiceDeployment is a property of the AWS::Lightsail::Container: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-container.html resource. It describes a container deployment configuration of a container service.

A deployment specifies the settings, such as the ports and launch command, of containers that are deployed to your container service.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-containerservicedeployment.html

    .PARAMETER Containers
        An object that describes the configuration for the containers of the deployment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-containerservicedeployment.html#cfn-lightsail-container-containerservicedeployment-containers
        UpdateType: Mutable
        Type: List
        ItemType: Container
        DuplicatesAllowed: False

    .PARAMETER PublicEndpoint
        An object that describes the endpoint of the deployment.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-containerservicedeployment.html#cfn-lightsail-container-containerservicedeployment-publicendpoint
        UpdateType: Mutable
        Type: PublicEndpoint

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Container.ContainerServiceDeployment')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Lightsail.Container.Container"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Containers,
        [parameter(Mandatory = $false)]
        $PublicEndpoint
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Container.ContainerServiceDeployment'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
