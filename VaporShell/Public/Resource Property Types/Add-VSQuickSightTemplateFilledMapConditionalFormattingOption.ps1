function Add-VSQuickSightTemplateFilledMapConditionalFormattingOption {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.FilledMapConditionalFormattingOption resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.FilledMapConditionalFormattingOption resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconditionalformattingoption.html

    .PARAMETER Shape
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-filledmapconditionalformattingoption.html#cfn-quicksight-template-filledmapconditionalformattingoption-shape
        UpdateType: Mutable
        Type: FilledMapShapeConditionalFormatting

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.FilledMapConditionalFormattingOption')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Shape
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.FilledMapConditionalFormattingOption'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
