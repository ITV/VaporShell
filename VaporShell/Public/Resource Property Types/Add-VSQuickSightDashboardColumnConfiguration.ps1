function Add-VSQuickSightDashboardColumnConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ColumnConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ColumnConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnconfiguration.html

    .PARAMETER Role
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnconfiguration.html#cfn-quicksight-dashboard-columnconfiguration-role
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER FormatConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnconfiguration.html#cfn-quicksight-dashboard-columnconfiguration-formatconfiguration
        UpdateType: Mutable
        Type: FormatConfiguration

    .PARAMETER Column
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnconfiguration.html#cfn-quicksight-dashboard-columnconfiguration-column
        UpdateType: Mutable
        Type: ColumnIdentifier

    .PARAMETER ColorsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-columnconfiguration.html#cfn-quicksight-dashboard-columnconfiguration-colorsconfiguration
        UpdateType: Mutable
        Type: ColorsConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ColumnConfiguration')]
    [cmdletbinding()]

    Param
    (
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
        $Role,

        [Parameter(Mandatory = $false)]
        $FormatConfiguration,

        [Parameter(Mandatory = $true)]
        $Column,

        [Parameter(Mandatory = $false)]
        $ColorsConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ColumnConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
