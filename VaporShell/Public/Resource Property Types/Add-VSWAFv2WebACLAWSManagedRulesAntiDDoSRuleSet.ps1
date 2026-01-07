function Add-VSWAFv2WebACLAWSManagedRulesAntiDDoSRuleSet {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.AWSManagedRulesAntiDDoSRuleSet resource property to the template.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.AWSManagedRulesAntiDDoSRuleSet resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesantiddosruleset.html

    .PARAMETER ClientSideActionConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesantiddosruleset.html#cfn-wafv2-webacl-awsmanagedrulesantiddosruleset-clientsideactionconfig
        UpdateType: Mutable
        Type: ClientSideActionConfig

    .PARAMETER SensitivityToBlock
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesantiddosruleset.html#cfn-wafv2-webacl-awsmanagedrulesantiddosruleset-sensitivitytoblock
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WAFv2.WebACL.AWSManagedRulesAntiDDoSRuleSet')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ClientSideActionConfig,

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
        $SensitivityToBlock

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.AWSManagedRulesAntiDDoSRuleSet'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
