function Add-VSQuickSightTemplateAxisScale {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.AxisScale resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.AxisScale resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisscale.html

    .PARAMETER Logarithmic
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisscale.html#cfn-quicksight-template-axisscale-logarithmic
        UpdateType: Mutable
        Type: AxisLogarithmicScale

    .PARAMETER Linear
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisscale.html#cfn-quicksight-template-axisscale-linear
        UpdateType: Mutable
        Type: AxisLinearScale

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.AxisScale')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Logarithmic,

        [Parameter(Mandatory = $false)]
        $Linear

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.AxisScale'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
