function Add-VSQuickSightAnalysisTablePinnedFieldOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TablePinnedFieldOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TablePinnedFieldOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablepinnedfieldoptions.html

    .PARAMETER PinnedLeftFields
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tablepinnedfieldoptions.html#cfn-quicksight-analysis-tablepinnedfieldoptions-pinnedleftfields
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TablePinnedFieldOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PinnedLeftFields
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TablePinnedFieldOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
