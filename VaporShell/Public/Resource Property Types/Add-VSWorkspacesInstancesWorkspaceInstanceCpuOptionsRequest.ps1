function Add-VSWorkspacesInstancesWorkspaceInstanceCpuOptionsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::WorkspacesInstances::WorkspaceInstance.CpuOptionsRequest resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkspacesInstances::WorkspaceInstance.CpuOptionsRequest resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-cpuoptionsrequest.html

    .PARAMETER ThreadsPerCore
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-cpuoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-cpuoptionsrequest-threadspercore
        UpdateType: Immutable
        PrimitiveType: Integer

    .PARAMETER CoreCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-cpuoptionsrequest.html#cfn-workspacesinstances-workspaceinstance-cpuoptionsrequest-corecount
        UpdateType: Immutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.CpuOptionsRequest')]
    [CmdletBinding()]

    Param
    (
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
        $ThreadsPerCore,

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
        $CoreCount

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.CpuOptionsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
