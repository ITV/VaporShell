function Add-VSQuickSightDashboardComparisonConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ComparisonConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ComparisonConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-comparisonconfiguration.html

    .PARAMETER ComparisonMethod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-comparisonconfiguration.html#cfn-quicksight-dashboard-comparisonconfiguration-comparisonmethod
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ComparisonFormat
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-comparisonconfiguration.html#cfn-quicksight-dashboard-comparisonconfiguration-comparisonformat
        UpdateType: Mutable
        Type: ComparisonFormatConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ComparisonConfiguration')]
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
        $ComparisonMethod,

        [Parameter(Mandatory = $false)]
        $ComparisonFormat

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ComparisonConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
