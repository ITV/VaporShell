function Add-VSQuickSightTemplateAxisDataOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.AxisDataOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.AxisDataOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdataoptions.html

    .PARAMETER DateAxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdataoptions.html#cfn-quicksight-template-axisdataoptions-dateaxisoptions
        UpdateType: Mutable
        Type: DateAxisOptions

    .PARAMETER NumericAxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-axisdataoptions.html#cfn-quicksight-template-axisdataoptions-numericaxisoptions
        UpdateType: Mutable
        Type: NumericAxisOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.AxisDataOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DateAxisOptions,

        [Parameter(Mandatory = $false)]
        $NumericAxisOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.AxisDataOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
