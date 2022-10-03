function Add-VSMacieFindingsFilterCriterion {
    <#
    .SYNOPSIS
        Adds an AWS::Macie::FindingsFilter.Criterion resource property to the template. A condition that specifies the property, operator, and value to use to filter the results of a query for findings. For more information, see Criterion: https://docs.aws.amazon.com/macie/latest/APIReference/findingsfilters-id.html#findingsfilters-id-model-criterion in the *Amazon Macie API Reference*.

    .DESCRIPTION
        Adds an AWS::Macie::FindingsFilter.Criterion resource property to the template.
A condition that specifies the property, operator, and value to use to filter the results of a query for findings. For more information, see Criterion: https://docs.aws.amazon.com/macie/latest/APIReference/findingsfilters-id.html#findingsfilters-id-model-criterion in the *Amazon Macie API Reference*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterion.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Macie.FindingsFilter.Criterion')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Macie.FindingsFilter.Criterion'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
