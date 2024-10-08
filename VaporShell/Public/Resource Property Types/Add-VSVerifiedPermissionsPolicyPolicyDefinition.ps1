function Add-VSVerifiedPermissionsPolicyPolicyDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::VerifiedPermissions::Policy.PolicyDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::VerifiedPermissions::Policy.PolicyDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-policydefinition.html

    .PARAMETER Static
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-policydefinition.html#cfn-verifiedpermissions-policy-policydefinition-static
        UpdateType: Mutable
        Type: StaticPolicyDefinition

    .PARAMETER TemplateLinked
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-verifiedpermissions-policy-policydefinition.html#cfn-verifiedpermissions-policy-policydefinition-templatelinked
        UpdateType: Mutable
        Type: TemplateLinkedPolicyDefinition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.VerifiedPermissions.Policy.PolicyDefinition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Static,

        [Parameter(Mandatory = $false)]
        $TemplateLinked

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.VerifiedPermissions.Policy.PolicyDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
