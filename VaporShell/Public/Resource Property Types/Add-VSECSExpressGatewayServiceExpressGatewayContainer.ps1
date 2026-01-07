function Add-VSECSExpressGatewayServiceExpressGatewayContainer {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::ExpressGatewayService.ExpressGatewayContainer resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::ExpressGatewayService.ExpressGatewayContainer resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html

    .PARAMETER RepositoryCredentials
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-repositorycredentials
        UpdateType: Mutable
        Type: ExpressGatewayRepositoryCredentials

    .PARAMETER Secrets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-secrets
        UpdateType: Mutable
        Type: List
        ItemType: Secret
        DuplicatesAllowed: True

    .PARAMETER Command
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-command
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AwsLogsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-awslogsconfiguration
        UpdateType: Mutable
        Type: ExpressGatewayServiceAwsLogsConfiguration

    .PARAMETER ContainerPort
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-containerport
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Environment
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-environment
        UpdateType: Mutable
        Type: List
        ItemType: KeyValuePair
        DuplicatesAllowed: True

    .PARAMETER Image
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-expressgatewayservice-expressgatewaycontainer.html#cfn-ecs-expressgatewayservice-expressgatewaycontainer-image
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.ExpressGatewayService.ExpressGatewayContainer')]
    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingPlainTextForPassword","RepositoryCredentials")]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidUsingUserNameAndPasswordParams","RepositoryCredentials")]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RepositoryCredentials,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.ExpressGatewayService.Secret"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Secrets,

        [Parameter(Mandatory = $false)]
        $Command,

        [Parameter(Mandatory = $false)]
        $AwsLogsConfiguration,

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
        $ContainerPort,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ECS.ExpressGatewayService.KeyValuePair"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Environment,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Image

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.ExpressGatewayService.ExpressGatewayContainer'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
