function Add-VSAppSyncFunctionConfigurationSyncConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::FunctionConfiguration.SyncConfig resource property to the template. Describes a Sync configuration for a resolver.

    .DESCRIPTION
        Adds an AWS::AppSync::FunctionConfiguration.SyncConfig resource property to the template.
Describes a Sync configuration for a resolver.

Specifies which Conflict Detection strategy and Resolution strategy to use when the resolver is invoked.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html

    .PARAMETER ConflictHandler
        The Conflict Resolution strategy to perform in the event of a conflict.
+  **OPTIMISTIC_CONCURRENCY**: Resolve conflicts by rejecting mutations when versions don't match the latest version at the server.
+  **AUTOMERGE**: Resolve conflicts with the Automerge conflict resolution strategy.
+  **LAMBDA**: Resolve conflicts with an AWS Lambda function supplied in the LambdaConflictHandlerConfig.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html#cfn-appsync-functionconfiguration-syncconfig-conflicthandler
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ConflictDetection
        The Conflict Detection strategy to use.
+  **VERSION**: Detect conflicts based on object versions for this resolver.
+  **NONE**: Do not detect conflicts when invoking this resolver.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html#cfn-appsync-functionconfiguration-syncconfig-conflictdetection
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER LambdaConflictHandlerConfig
        The LambdaConflictHandlerConfig when configuring LAMBDA as the Conflict Handler.

        Type: LambdaConflictHandlerConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-functionconfiguration-syncconfig.html#cfn-appsync-functionconfiguration-syncconfig-lambdaconflicthandlerconfig
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppSync.FunctionConfiguration.SyncConfig')]
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
        $ConflictHandler,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ConflictDetection,
        [parameter(Mandatory = $false)]
        $LambdaConflictHandlerConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.FunctionConfiguration.SyncConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
