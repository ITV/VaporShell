function Add-VSQuickSightAnalysisTableFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TableFieldWells resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TableFieldWells resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldwells.html

    .PARAMETER TableUnaggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldwells.html#cfn-quicksight-analysis-tablefieldwells-tableunaggregatedfieldwells
        UpdateType: Mutable
        Type: TableUnaggregatedFieldWells

    .PARAMETER TableAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablefieldwells.html#cfn-quicksight-analysis-tablefieldwells-tableaggregatedfieldwells
        UpdateType: Mutable
        Type: TableAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TableFieldWells')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TableUnaggregatedFieldWells,
        [parameter(Mandatory = $false)]
        $TableAggregatedFieldWells
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TableFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
