function Add-VSQuickSightAnalysisFreeFormLayoutConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.FreeFormLayoutConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.FreeFormLayoutConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-freeformlayoutconfiguration.html

    .PARAMETER CanvasSizeOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-freeformlayoutconfiguration.html#cfn-quicksight-analysis-freeformlayoutconfiguration-canvassizeoptions
        UpdateType: Mutable
        Type: FreeFormLayoutCanvasSizeOptions

    .PARAMETER Elements
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-freeformlayoutconfiguration.html#cfn-quicksight-analysis-freeformlayoutconfiguration-elements
        UpdateType: Mutable
        Type: List
        ItemType: FreeFormLayoutElement
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.FreeFormLayoutConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CanvasSizeOptions,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.QuickSight.Analysis.FreeFormLayoutElement"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Elements

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.FreeFormLayoutConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
