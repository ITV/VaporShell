function Add-VSMacieFindingsFilterFindingCriteria {
    <#
    .SYNOPSIS
        Adds an AWS::Macie::FindingsFilter.FindingCriteria resource property to the template. Specifies, as a map, one or more property-based conditions that filter the results of a query for findings.

    .DESCRIPTION
        Adds an AWS::Macie::FindingsFilter.FindingCriteria resource property to the template.
Specifies, as a map, one or more property-based conditions that filter the results of a query for findings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingcriteria.html

    .PARAMETER Criterion
        Specifies a condition that defines the property, operator, and value to use to filter the results.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingcriteria.html#cfn-macie-findingsfilter-findingcriteria-criterion
        UpdateType: Mutable
        Type: Criterion

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Macie.FindingsFilter.FindingCriteria')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Criterion
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Macie.FindingsFilter.FindingCriteria'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
