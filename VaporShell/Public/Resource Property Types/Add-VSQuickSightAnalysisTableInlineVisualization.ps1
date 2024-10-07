function Add-VSQuickSightAnalysisTableInlineVisualization {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TableInlineVisualization resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TableInlineVisualization resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableinlinevisualization.html

    .PARAMETER DataBars
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableinlinevisualization.html#cfn-quicksight-analysis-tableinlinevisualization-databars
        UpdateType: Mutable
        Type: DataBarsOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TableInlineVisualization')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DataBars
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TableInlineVisualization'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
