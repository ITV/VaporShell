function Add-VSQuickSightTemplateDefaultInteractiveLayoutConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DefaultInteractiveLayoutConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DefaultInteractiveLayoutConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultinteractivelayoutconfiguration.html

    .PARAMETER FreeForm
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultinteractivelayoutconfiguration.html#cfn-quicksight-template-defaultinteractivelayoutconfiguration-freeform
        UpdateType: Mutable
        Type: DefaultFreeFormLayoutConfiguration

    .PARAMETER Grid
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaultinteractivelayoutconfiguration.html#cfn-quicksight-template-defaultinteractivelayoutconfiguration-grid
        UpdateType: Mutable
        Type: DefaultGridLayoutConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.DefaultInteractiveLayoutConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FreeForm,
        [parameter(Mandatory = $false)]
        $Grid
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DefaultInteractiveLayoutConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
