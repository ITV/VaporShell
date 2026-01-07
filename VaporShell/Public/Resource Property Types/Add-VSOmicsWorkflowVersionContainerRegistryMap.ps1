function Add-VSOmicsWorkflowVersionContainerRegistryMap {
    <#
    .SYNOPSIS
        Adds an AWS::Omics::WorkflowVersion.ContainerRegistryMap resource property to the template.

    .DESCRIPTION
        Adds an AWS::Omics::WorkflowVersion.ContainerRegistryMap resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-containerregistrymap.html

    .PARAMETER RegistryMappings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-containerregistrymap.html#cfn-omics-workflowversion-containerregistrymap-registrymappings
        UpdateType: Immutable
        Type: List
        ItemType: RegistryMapping
        DuplicatesAllowed: True

    .PARAMETER ImageMappings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-containerregistrymap.html#cfn-omics-workflowversion-containerregistrymap-imagemappings
        UpdateType: Immutable
        Type: List
        ItemType: ImageMapping
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Omics.WorkflowVersion.ContainerRegistryMap')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Omics.WorkflowVersion.RegistryMapping"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RegistryMappings,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Omics.WorkflowVersion.ImageMapping"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ImageMappings

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Omics.WorkflowVersion.ContainerRegistryMap'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
