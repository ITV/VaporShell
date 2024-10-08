function Add-VSQuickSightTemplateInnerFilter {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.InnerFilter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.InnerFilter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-innerfilter.html

    .PARAMETER CategoryInnerFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-innerfilter.html#cfn-quicksight-template-innerfilter-categoryinnerfilter
        UpdateType: Mutable
        Type: CategoryInnerFilter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.InnerFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CategoryInnerFilter
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.InnerFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
