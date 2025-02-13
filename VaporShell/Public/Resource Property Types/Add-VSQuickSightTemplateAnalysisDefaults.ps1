function Add-VSQuickSightTemplateAnalysisDefaults {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.AnalysisDefaults resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.AnalysisDefaults resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-analysisdefaults.html

    .PARAMETER DefaultNewSheetConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-analysisdefaults.html#cfn-quicksight-template-analysisdefaults-defaultnewsheetconfiguration
        UpdateType: Mutable
        Type: DefaultNewSheetConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.AnalysisDefaults')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $DefaultNewSheetConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.AnalysisDefaults'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
