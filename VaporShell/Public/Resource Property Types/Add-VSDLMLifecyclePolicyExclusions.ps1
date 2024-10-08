function Add-VSDLMLifecyclePolicyExclusions {
    <#
    .SYNOPSIS
        Adds an AWS::DLM::LifecyclePolicy.Exclusions resource property to the template.

    .DESCRIPTION
        Adds an AWS::DLM::LifecyclePolicy.Exclusions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html

    .PARAMETER ExcludeBootVolumes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html#cfn-dlm-lifecyclepolicy-exclusions-excludebootvolumes
        PrimitiveType: Boolean
        UpdateType: Mutable

    .PARAMETER ExcludeTags
        Type: ExcludeTags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html#cfn-dlm-lifecyclepolicy-exclusions-excludetags
        UpdateType: Mutable

    .PARAMETER ExcludeVolumeTypes
        Type: ExcludeVolumeTypesList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-exclusions.html#cfn-dlm-lifecyclepolicy-exclusions-excludevolumetypes
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DLM.LifecyclePolicy.Exclusions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ExcludeBootVolumes,

        [Parameter(Mandatory = $false)]
        $ExcludeTags,

        [Parameter(Mandatory = $false)]
        $ExcludeVolumeTypes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DLM.LifecyclePolicy.Exclusions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
