function Add-VSQuickSightTemplateLayoutConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.LayoutConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.LayoutConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-layoutconfiguration.html

    .PARAMETER GridLayout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-layoutconfiguration.html#cfn-quicksight-template-layoutconfiguration-gridlayout
        UpdateType: Mutable
        Type: GridLayoutConfiguration

    .PARAMETER FreeFormLayout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-layoutconfiguration.html#cfn-quicksight-template-layoutconfiguration-freeformlayout
        UpdateType: Mutable
        Type: FreeFormLayoutConfiguration

    .PARAMETER SectionBasedLayout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-layoutconfiguration.html#cfn-quicksight-template-layoutconfiguration-sectionbasedlayout
        UpdateType: Mutable
        Type: SectionBasedLayoutConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.LayoutConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GridLayout,
        [parameter(Mandatory = $false)]
        $FreeFormLayout,
        [parameter(Mandatory = $false)]
        $SectionBasedLayout
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.LayoutConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
