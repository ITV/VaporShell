function Add-VSECSTaskDefinitionEnvironmentFile {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::TaskDefinition.EnvironmentFile resource property to the template. A list of files containing the environment variables to pass to a container. You can specify up to ten environment files. The file must have a .env file extension. Each line in an environment file should contain an environment variable in VARIABLE=VALUE format. Lines beginning with # are treated as comments and are ignored. For more information about the environment variable file syntax, see Declare default environment variables in file: https://docs.docker.com/compose/env-file/.

    .DESCRIPTION
        Adds an AWS::ECS::TaskDefinition.EnvironmentFile resource property to the template.
A list of files containing the environment variables to pass to a container. You can specify up to ten environment files. The file must have a .env file extension. Each line in an environment file should contain an environment variable in VARIABLE=VALUE format. Lines beginning with # are treated as comments and are ignored. For more information about the environment variable file syntax, see Declare default environment variables in file: https://docs.docker.com/compose/env-file/.

If there are environment variables specified using the environment parameter in a container definition, they take precedence over the variables contained within an environment file. If multiple environment files are specified that contain the same variable, they're processed from the top down. We recommend that you use unique variable names. For more information, see Specifying environment variables: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/taskdef-envfiles.html in the *Amazon Elastic Container Service Developer Guide*.

This parameter is only supported for tasks hosted on Fargate using the following platform versions:

+ Linux platform version 1.4.0 or later.

+ Windows platform version 1.0.0 or later.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html

    .PARAMETER Value
        The Amazon Resource Name ARN of the Amazon S3 object containing the environment variable file.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html#cfn-ecs-taskdefinition-environmentfile-value
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER Type
        The file type to use. The only supported value is s3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-environmentfile.html#cfn-ecs-taskdefinition-environmentfile-type
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ECS.TaskDefinition.EnvironmentFile')]
    [cmdletbinding()]
    Param
    (
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
        $Value,
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
        $Type
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.TaskDefinition.EnvironmentFile'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
