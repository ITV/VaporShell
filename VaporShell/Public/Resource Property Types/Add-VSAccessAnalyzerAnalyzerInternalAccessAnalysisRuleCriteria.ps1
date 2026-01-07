function Add-VSAccessAnalyzerAnalyzerInternalAccessAnalysisRuleCriteria {
    <#
    .SYNOPSIS
        Adds an AWS::AccessAnalyzer::Analyzer.InternalAccessAnalysisRuleCriteria resource property to the template.

    .DESCRIPTION
        Adds an AWS::AccessAnalyzer::Analyzer.InternalAccessAnalysisRuleCriteria resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html

    .PARAMETER ResourceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrulecriteria-resourcetypes
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AccountIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrulecriteria-accountids
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ResourceArns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrulecriteria.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrulecriteria-resourcearns
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleCriteria')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ResourceTypes,

        [Parameter(Mandatory = $false)]
        $AccountIds,

        [Parameter(Mandatory = $false)]
        $ResourceArns

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleCriteria'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
