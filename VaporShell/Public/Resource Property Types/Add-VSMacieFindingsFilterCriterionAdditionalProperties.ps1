function Add-VSMacieFindingsFilterCriterionAdditionalProperties {
    <#
    .SYNOPSIS
        Adds an AWS::Macie::FindingsFilter.CriterionAdditionalProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::Macie::FindingsFilter.CriterionAdditionalProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html

    .PARAMETER lt
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-lt
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER gte
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-gte
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER neq
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-neq
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER lte
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-lte
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER eq
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-eq
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER gt
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-gt
        UpdateType: Mutable
        PrimitiveType: Long

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Macie.FindingsFilter.CriterionAdditionalProperties')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $lt,

        [Parameter(Mandatory = $false)]
        $gte,

        [Parameter(Mandatory = $false)]
        $neq,

        [Parameter(Mandatory = $false)]
        $lte,

        [Parameter(Mandatory = $false)]
        $eq,

        [Parameter(Mandatory = $false)]
        $gt

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Macie.FindingsFilter.CriterionAdditionalProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
