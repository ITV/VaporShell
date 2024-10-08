function Add-VSQuickSightTemplateLineSeriesAxisDisplayOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.LineSeriesAxisDisplayOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.LineSeriesAxisDisplayOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-lineseriesaxisdisplayoptions.html

    .PARAMETER MissingDataConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-lineseriesaxisdisplayoptions.html#cfn-quicksight-template-lineseriesaxisdisplayoptions-missingdataconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: MissingDataConfiguration
        DuplicatesAllowed: True

    .PARAMETER AxisOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-lineseriesaxisdisplayoptions.html#cfn-quicksight-template-lineseriesaxisdisplayoptions-axisoptions
        UpdateType: Mutable
        Type: AxisDisplayOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.LineSeriesAxisDisplayOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.MissingDataConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MissingDataConfigurations,

        [Parameter(Mandatory = $false)]
        $AxisOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.LineSeriesAxisDisplayOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
