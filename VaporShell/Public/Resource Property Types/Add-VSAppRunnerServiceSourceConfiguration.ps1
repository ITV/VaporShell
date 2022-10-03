function Add-VSAppRunnerServiceSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AppRunner::Service.SourceConfiguration resource property to the template. Describes the source deployed to an AWS App Runner service. It can be a code or an image repository.

    .DESCRIPTION
        Adds an AWS::AppRunner::Service.SourceConfiguration resource property to the template.
Describes the source deployed to an AWS App Runner service. It can be a code or an image repository.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html

    .PARAMETER CodeRepository
        The description of a source code repository.
You must provide either this member or ImageRepository but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-coderepository
        UpdateType: Mutable
        Type: CodeRepository

    .PARAMETER ImageRepository
        The description of a source image repository.
You must provide either this member or CodeRepository but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-imagerepository
        UpdateType: Mutable
        Type: ImageRepository

    .PARAMETER AutoDeploymentsEnabled
        If true, continuous integration from the source repository is enabled for the App Runner service. Each repository change including any source code commit or new image version starts a deployment.
Default: App Runner sets to false for a source image that uses an ECR Public repository or an ECR repository that's in an AWS account other than the one that the service is in. App Runner sets to true in all other cases which currently include a source code repository or a source image using a same-account ECR repository.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-autodeploymentsenabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER AuthenticationConfiguration
        Describes the resources that are needed to authenticate access to some source repositories.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-sourceconfiguration.html#cfn-apprunner-service-sourceconfiguration-authenticationconfiguration
        UpdateType: Mutable
        Type: AuthenticationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppRunner.Service.SourceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CodeRepository,
        [parameter(Mandatory = $false)]
        $ImageRepository,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AutoDeploymentsEnabled,
        [parameter(Mandatory = $false)]
        $AuthenticationConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppRunner.Service.SourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
