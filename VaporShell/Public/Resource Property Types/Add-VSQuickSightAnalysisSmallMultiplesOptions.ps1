function Add-VSQuickSightAnalysisSmallMultiplesOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.SmallMultiplesOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.SmallMultiplesOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-smallmultiplesoptions.html

    .PARAMETER MaxVisibleRows
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-smallmultiplesoptions.html#cfn-quicksight-analysis-smallmultiplesoptions-maxvisiblerows
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER PanelConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-smallmultiplesoptions.html#cfn-quicksight-analysis-smallmultiplesoptions-panelconfiguration
        UpdateType: Mutable
        Type: PanelConfiguration

    .PARAMETER MaxVisibleColumns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-smallmultiplesoptions.html#cfn-quicksight-analysis-smallmultiplesoptions-maxvisiblecolumns
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER XAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-smallmultiplesoptions.html#cfn-quicksight-analysis-smallmultiplesoptions-xaxis
        UpdateType: Mutable
        Type: SmallMultiplesAxisProperties

    .PARAMETER YAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-smallmultiplesoptions.html#cfn-quicksight-analysis-smallmultiplesoptions-yaxis
        UpdateType: Mutable
        Type: SmallMultiplesAxisProperties

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.SmallMultiplesOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxVisibleRows,

        [Parameter(Mandatory = $false)]
        $PanelConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MaxVisibleColumns,

        [Parameter(Mandatory = $false)]
        $XAxis,

        [Parameter(Mandatory = $false)]
        $YAxis

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.SmallMultiplesOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
