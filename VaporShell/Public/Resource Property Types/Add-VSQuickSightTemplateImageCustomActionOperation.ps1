function Add-VSQuickSightTemplateImageCustomActionOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.ImageCustomActionOperation resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.ImageCustomActionOperation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-imagecustomactionoperation.html

    .PARAMETER NavigationOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-imagecustomactionoperation.html#cfn-quicksight-template-imagecustomactionoperation-navigationoperation
        UpdateType: Mutable
        Type: CustomActionNavigationOperation

    .PARAMETER SetParametersOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-imagecustomactionoperation.html#cfn-quicksight-template-imagecustomactionoperation-setparametersoperation
        UpdateType: Mutable
        Type: CustomActionSetParametersOperation

    .PARAMETER URLOperation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-imagecustomactionoperation.html#cfn-quicksight-template-imagecustomactionoperation-urloperation
        UpdateType: Mutable
        Type: CustomActionURLOperation

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.ImageCustomActionOperation')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $NavigationOperation,

        [Parameter(Mandatory = $false)]
        $SetParametersOperation,

        [Parameter(Mandatory = $false)]
        $URLOperation

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.ImageCustomActionOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
