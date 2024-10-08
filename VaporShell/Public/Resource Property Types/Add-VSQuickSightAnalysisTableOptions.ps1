function Add-VSQuickSightAnalysisTableOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.TableOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.TableOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableoptions.html

    .PARAMETER HeaderStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableoptions.html#cfn-quicksight-analysis-tableoptions-headerstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER CellStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableoptions.html#cfn-quicksight-analysis-tableoptions-cellstyle
        UpdateType: Mutable
        Type: TableCellStyle

    .PARAMETER Orientation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableoptions.html#cfn-quicksight-analysis-tableoptions-orientation
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RowAlternateColorOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-tableoptions.html#cfn-quicksight-analysis-tableoptions-rowalternatecoloroptions
        UpdateType: Mutable
        Type: RowAlternateColorOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Analysis.TableOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $HeaderStyle,

        [Parameter(Mandatory = $false)]
        $CellStyle,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Orientation,

        [Parameter(Mandatory = $false)]
        $RowAlternateColorOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.TableOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
