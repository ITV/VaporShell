function Add-VSVpcLatticeRuleMatch {
    <#
    .SYNOPSIS
        Adds an AWS::VpcLattice::Rule.Match resource property to the template. 

    .DESCRIPTION
        Adds an AWS::VpcLattice::Rule.Match resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-match.html

    .PARAMETER HttpMatch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-match.html#cfn-vpclattice-rule-match-httpmatch
        UpdateType: Mutable
        Type: HttpMatch

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.VpcLattice.Rule.Match')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $HttpMatch
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.VpcLattice.Rule.Match'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
