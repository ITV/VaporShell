function Add-VSWorkspacesInstancesWorkspaceInstanceLicenseConfigurationRequest {
    <#
    .SYNOPSIS
        Adds an AWS::WorkspacesInstances::WorkspaceInstance.LicenseConfigurationRequest resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkspacesInstances::WorkspaceInstance.LicenseConfigurationRequest resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-licenseconfigurationrequest.html

    .PARAMETER LicenseConfigurationArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-licenseconfigurationrequest.html#cfn-workspacesinstances-workspaceinstance-licenseconfigurationrequest-licenseconfigurationarn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.LicenseConfigurationRequest')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LicenseConfigurationArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkspacesInstances.WorkspaceInstance.LicenseConfigurationRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
