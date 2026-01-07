function Add-VSB2BITransformerX12ValidationRule {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Transformer.X12ValidationRule resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Transformer.X12ValidationRule resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html

    .PARAMETER ElementRequirementValidationRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html#cfn-b2bi-transformer-x12validationrule-elementrequirementvalidationrule
        UpdateType: Mutable
        Type: X12ElementRequirementValidationRule

    .PARAMETER CodeListValidationRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html#cfn-b2bi-transformer-x12validationrule-codelistvalidationrule
        UpdateType: Mutable
        Type: X12CodeListValidationRule

    .PARAMETER ElementLengthValidationRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationrule.html#cfn-b2bi-transformer-x12validationrule-elementlengthvalidationrule
        UpdateType: Mutable
        Type: X12ElementLengthValidationRule

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Transformer.X12ValidationRule')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ElementRequirementValidationRule,

        [Parameter(Mandatory = $false)]
        $CodeListValidationRule,

        [Parameter(Mandatory = $false)]
        $ElementLengthValidationRule

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Transformer.X12ValidationRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
