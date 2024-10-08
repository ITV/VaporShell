function Add-VSQuickSightAnalysisTableSideBorderOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TableSideBorderOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TableSideBorderOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html

    .PARAMETER Left
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-left
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER Top
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-top
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER InnerHorizontal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-innerhorizontal
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER Right
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-right
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER Bottom
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-bottom
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER InnerVertical
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablesideborderoptions.html#cfn-quicksight-analysis-tablesideborderoptions-innervertical
        UpdateType: Mutable
        Type: TableBorderOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TableSideBorderOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Left,

        [Parameter(Mandatory = $false)]
        $Top,

        [Parameter(Mandatory = $false)]
        $InnerHorizontal,

        [Parameter(Mandatory = $false)]
        $Right,

        [Parameter(Mandatory = $false)]
        $Bottom,

        [Parameter(Mandatory = $false)]
        $InnerVertical

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TableSideBorderOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
