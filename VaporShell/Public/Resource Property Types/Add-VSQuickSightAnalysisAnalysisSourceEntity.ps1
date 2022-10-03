function Add-VSQuickSightAnalysisAnalysisSourceEntity {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.AnalysisSourceEntity resource property to the template. The source entity of an analysis.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.AnalysisSourceEntity resource property to the template.
The source entity of an analysis.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourceentity.html

    .PARAMETER SourceTemplate
        The source template for the source entity of the analysis.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-analysissourceentity.html#cfn-quicksight-analysis-analysissourceentity-sourcetemplate
        UpdateType: Mutable
        Type: AnalysisSourceTemplate

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.AnalysisSourceEntity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SourceTemplate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.AnalysisSourceEntity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
