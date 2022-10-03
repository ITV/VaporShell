function Add-VSLexResourcePolicyPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::ResourcePolicy.Policy resource property to the template. The resource policy to add to the resource. The policy is a JSON structure that contains one or more statements that define the policy. The policy must follow the IAM policy syntax. For more information about the contents of a JSON policy document, see the IAM JSON policy reference: IAM/latest/UserGuide/reference_policies.html.

    .DESCRIPTION
        Adds an AWS::Lex::ResourcePolicy.Policy resource property to the template.
The resource policy to add to the resource. The policy is a JSON structure that contains one or more statements that define the policy. The policy must follow the IAM policy syntax. For more information about the contents of a JSON policy document, see the IAM JSON policy reference: IAM/latest/UserGuide/reference_policies.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-resourcepolicy-policy.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.ResourcePolicy.Policy')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.ResourcePolicy.Policy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
