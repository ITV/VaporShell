function Add-VSQuickSightAnalysisGlobalTableBorderOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GlobalTableBorderOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GlobalTableBorderOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-globaltableborderoptions.html

    .PARAMETER UniformBorder
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-globaltableborderoptions.html#cfn-quicksight-analysis-globaltableborderoptions-uniformborder
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER SideSpecificBorder
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-globaltableborderoptions.html#cfn-quicksight-analysis-globaltableborderoptions-sidespecificborder
        UpdateType: Mutable
        Type: TableSideBorderOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GlobalTableBorderOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $UniformBorder,
        [parameter(Mandatory = $false)]
        $SideSpecificBorder
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GlobalTableBorderOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
