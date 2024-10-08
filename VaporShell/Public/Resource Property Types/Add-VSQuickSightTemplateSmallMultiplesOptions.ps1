function Add-VSQuickSightTemplateSmallMultiplesOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.SmallMultiplesOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.SmallMultiplesOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-smallmultiplesoptions.html

    .PARAMETER MaxVisibleRows
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-smallmultiplesoptions.html#cfn-quicksight-template-smallmultiplesoptions-maxvisiblerows
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER PanelConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-smallmultiplesoptions.html#cfn-quicksight-template-smallmultiplesoptions-panelconfiguration
        UpdateType: Mutable
        Type: PanelConfiguration

    .PARAMETER MaxVisibleColumns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-smallmultiplesoptions.html#cfn-quicksight-template-smallmultiplesoptions-maxvisiblecolumns
        UpdateType: Mutable
        PrimitiveType: Double

    .PARAMETER XAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-smallmultiplesoptions.html#cfn-quicksight-template-smallmultiplesoptions-xaxis
        UpdateType: Mutable
        Type: SmallMultiplesAxisProperties

    .PARAMETER YAxis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-smallmultiplesoptions.html#cfn-quicksight-template-smallmultiplesoptions-yaxis
        UpdateType: Mutable
        Type: SmallMultiplesAxisProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.SmallMultiplesOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $PanelConfiguration,
        [parameter(Mandatory = $false)]
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
        [parameter(Mandatory = $false)]
        $XAxis,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.SmallMultiplesOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
