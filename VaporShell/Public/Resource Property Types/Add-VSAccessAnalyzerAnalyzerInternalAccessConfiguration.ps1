function Add-VSAccessAnalyzerAnalyzerInternalAccessConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AccessAnalyzer::Analyzer.InternalAccessConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::AccessAnalyzer::Analyzer.InternalAccessConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessconfiguration.html

    .PARAMETER InternalAccessAnalysisRule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessconfiguration.html#cfn-accessanalyzer-analyzer-internalaccessconfiguration-internalaccessanalysisrule
        UpdateType: Conditional
        Type: InternalAccessAnalysisRule

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $InternalAccessAnalysisRule

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
