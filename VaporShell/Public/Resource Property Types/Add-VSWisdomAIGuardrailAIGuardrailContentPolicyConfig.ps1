function Add-VSWisdomAIGuardrailAIGuardrailContentPolicyConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::AIGuardrail.AIGuardrailContentPolicyConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::AIGuardrail.AIGuardrailContentPolicyConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailcontentpolicyconfig.html

    .PARAMETER FiltersConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailcontentpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailcontentpolicyconfig-filtersconfig
        UpdateType: Mutable
        Type: List
        ItemType: GuardrailContentFilterConfig
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.AIGuardrail.AIGuardrailContentPolicyConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Wisdom.AIGuardrail.GuardrailContentFilterConfig"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FiltersConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.AIGuardrail.AIGuardrailContentPolicyConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
