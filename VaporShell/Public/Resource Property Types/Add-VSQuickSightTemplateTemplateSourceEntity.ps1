function Add-VSQuickSightTemplateTemplateSourceEntity {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TemplateSourceEntity resource property to the template. The source entity of the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TemplateSourceEntity resource property to the template.
The source entity of the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templatesourceentity.html

    .PARAMETER SourceAnalysis
        The source analysis, if it is based on an analysis.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templatesourceentity.html#cfn-quicksight-template-templatesourceentity-sourceanalysis
        UpdateType: Mutable
        Type: TemplateSourceAnalysis

    .PARAMETER SourceTemplate
        The source template, if it is based on an template.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-templatesourceentity.html#cfn-quicksight-template-templatesourceentity-sourcetemplate
        UpdateType: Mutable
        Type: TemplateSourceTemplate

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.TemplateSourceEntity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SourceAnalysis,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TemplateSourceEntity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
