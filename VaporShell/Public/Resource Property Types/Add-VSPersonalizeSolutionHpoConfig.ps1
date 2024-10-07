function Add-VSPersonalizeSolutionHpoConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Personalize::Solution.HpoConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Personalize::Solution.HpoConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html

    .PARAMETER HpoResourceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html#cfn-personalize-solution-hpoconfig-hporesourceconfig
        UpdateType: Immutable
        Type: HpoResourceConfig

    .PARAMETER AlgorithmHyperParameterRanges
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html#cfn-personalize-solution-hpoconfig-algorithmhyperparameterranges
        UpdateType: Immutable
        Type: AlgorithmHyperParameterRanges

    .PARAMETER HpoObjective
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-solution-hpoconfig.html#cfn-personalize-solution-hpoconfig-hpoobjective
        UpdateType: Immutable
        Type: HpoObjective

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Personalize.Solution.HpoConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HpoResourceConfig,
        [parameter(Mandatory = $false)]
        $AlgorithmHyperParameterRanges,
        [parameter(Mandatory = $false)]
        $HpoObjective
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Personalize.Solution.HpoConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
