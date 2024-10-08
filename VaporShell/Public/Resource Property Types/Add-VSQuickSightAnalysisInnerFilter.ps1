function Add-VSQuickSightAnalysisInnerFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.InnerFilter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.InnerFilter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-innerfilter.html

    .PARAMETER CategoryInnerFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-innerfilter.html#cfn-quicksight-analysis-innerfilter-categoryinnerfilter
        UpdateType: Mutable
        Type: CategoryInnerFilter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.InnerFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CategoryInnerFilter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.InnerFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
