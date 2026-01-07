function Add-VSQuickSightAnalysisVisualInteractionOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.VisualInteractionOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.VisualInteractionOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualinteractionoptions.html

    .PARAMETER ContextMenuOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualinteractionoptions.html#cfn-quicksight-analysis-visualinteractionoptions-contextmenuoption
        UpdateType: Mutable
        Type: ContextMenuOption

    .PARAMETER VisualMenuOption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualinteractionoptions.html#cfn-quicksight-analysis-visualinteractionoptions-visualmenuoption
        UpdateType: Mutable
        Type: VisualMenuOption

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.VisualInteractionOptions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ContextMenuOption,

        [Parameter(Mandatory = $false)]
        $VisualMenuOption

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.VisualInteractionOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
