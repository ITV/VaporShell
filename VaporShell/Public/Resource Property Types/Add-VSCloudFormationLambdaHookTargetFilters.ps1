function Add-VSCloudFormationLambdaHookTargetFilters {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFormation::LambdaHook.TargetFilters resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFormation::LambdaHook.TargetFilters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-targetfilters.html

    .PARAMETER Actions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-targetfilters.html#cfn-cloudformation-lambdahook-targetfilters-actions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER TargetNames
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-targetfilters.html#cfn-cloudformation-lambdahook-targetfilters-targetnames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Targets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-targetfilters.html#cfn-cloudformation-lambdahook-targetfilters-targets
        UpdateType: Mutable
        Type: List
        ItemType: HookTarget
        DuplicatesAllowed: False

    .PARAMETER InvocationPoints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-targetfilters.html#cfn-cloudformation-lambdahook-targetfilters-invocationpoints
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFormation.LambdaHook.TargetFilters')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Actions,

        [Parameter(Mandatory = $false)]
        $TargetNames,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CloudFormation.LambdaHook.HookTarget"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Targets,

        [Parameter(Mandatory = $false)]
        $InvocationPoints

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFormation.LambdaHook.TargetFilters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
