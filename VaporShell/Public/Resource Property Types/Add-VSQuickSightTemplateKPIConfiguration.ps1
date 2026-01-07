function Add-VSQuickSightTemplateKPIConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.KPIConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.KPIConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconfiguration.html#cfn-quicksight-template-kpiconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: KPISortConfiguration

    .PARAMETER KPIOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconfiguration.html#cfn-quicksight-template-kpiconfiguration-kpioptions
        UpdateType: Mutable
        Type: KPIOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconfiguration.html#cfn-quicksight-template-kpiconfiguration-fieldwells
        UpdateType: Mutable
        Type: KPIFieldWells

    .PARAMETER Interactions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconfiguration.html#cfn-quicksight-template-kpiconfiguration-interactions
        UpdateType: Mutable
        Type: VisualInteractionOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.KPIConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $KPIOptions,

        [Parameter(Mandatory = $false)]
        $FieldWells,

        [Parameter(Mandatory = $false)]
        $Interactions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.KPIConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
