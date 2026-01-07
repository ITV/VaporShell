function Add-VSAccessAnalyzerAnalyzerInternalAccessAnalysisRule {
    <#
    .SYNOPSIS
        Adds an AWS::AccessAnalyzer::Analyzer.InternalAccessAnalysisRule resource property to the template.

    .DESCRIPTION
        Adds an AWS::AccessAnalyzer::Analyzer.InternalAccessAnalysisRule resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrule.html

    .PARAMETER Inclusions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-accessanalyzer-analyzer-internalaccessanalysisrule.html#cfn-accessanalyzer-analyzer-internalaccessanalysisrule-inclusions
        UpdateType: Conditional
        Type: List
        ItemType: InternalAccessAnalysisRuleCriteria
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessAnalysisRule')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessAnalysisRuleCriteria"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Inclusions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AccessAnalyzer.Analyzer.InternalAccessAnalysisRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
