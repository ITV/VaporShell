function Add-VSECSServiceDeploymentLifecycleHook {
    <#
    .SYNOPSIS
        Adds an AWS::ECS::Service.DeploymentLifecycleHook resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECS::Service.DeploymentLifecycleHook resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html

    .PARAMETER LifecycleStages
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-lifecyclestages
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER HookTargetArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-hooktargetarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER HookDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-hookdetails
        UpdateType: Mutable
        PrimitiveType: Json

    .PARAMETER RoleArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentlifecyclehook.html#cfn-ecs-service-deploymentlifecyclehook-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECS.Service.DeploymentLifecycleHook')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $LifecycleStages,

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
        $HookTargetArn,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HookDetails,

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
        $RoleArn

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                'HookDetails' {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECS.Service.DeploymentLifecycleHook'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
