function Add-VSQuickSightTemplateGeospatialHeatmapConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.GeospatialHeatmapConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.GeospatialHeatmapConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialheatmapconfiguration.html

    .PARAMETER HeatmapColor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialheatmapconfiguration.html#cfn-quicksight-template-geospatialheatmapconfiguration-heatmapcolor
        UpdateType: Mutable
        Type: GeospatialHeatmapColorScale

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.GeospatialHeatmapConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $HeatmapColor
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.GeospatialHeatmapConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
