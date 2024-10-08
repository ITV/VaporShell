function Add-VSQuickSightAnalysisGeospatialPointStyleOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Analysis.GeospatialPointStyleOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Analysis.GeospatialPointStyleOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointstyleoptions.html

    .PARAMETER SelectedPointStyle
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointstyleoptions.html#cfn-quicksight-analysis-geospatialpointstyleoptions-selectedpointstyle
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ClusterMarkerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointstyleoptions.html#cfn-quicksight-analysis-geospatialpointstyleoptions-clustermarkerconfiguration
        UpdateType: Mutable
        Type: ClusterMarkerConfiguration

    .PARAMETER HeatmapConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-geospatialpointstyleoptions.html#cfn-quicksight-analysis-geospatialpointstyleoptions-heatmapconfiguration
        UpdateType: Mutable
        Type: GeospatialHeatmapConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Analysis.GeospatialPointStyleOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SelectedPointStyle,
        [parameter(Mandatory = $false)]
        $ClusterMarkerConfiguration,
        [parameter(Mandatory = $false)]
        $HeatmapConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Analysis.GeospatialPointStyleOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
