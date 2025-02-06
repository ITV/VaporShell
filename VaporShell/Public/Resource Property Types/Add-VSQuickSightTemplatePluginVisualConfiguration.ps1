function Add-VSQuickSightTemplatePluginVisualConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.PluginVisualConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.PluginVisualConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisualconfiguration.html

    .PARAMETER SortConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisualconfiguration.html#cfn-quicksight-template-pluginvisualconfiguration-sortconfiguration
        UpdateType: Mutable
        Type: PluginVisualSortConfiguration

    .PARAMETER VisualOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisualconfiguration.html#cfn-quicksight-template-pluginvisualconfiguration-visualoptions
        UpdateType: Mutable
        Type: PluginVisualOptions

    .PARAMETER FieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-pluginvisualconfiguration.html#cfn-quicksight-template-pluginvisualconfiguration-fieldwells
        UpdateType: Mutable
        Type: List
        ItemType: PluginVisualFieldWell
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Template.PluginVisualConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SortConfiguration,

        [Parameter(Mandatory = $false)]
        $VisualOptions,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Template.PluginVisualFieldWell"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FieldWells

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.PluginVisualConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
