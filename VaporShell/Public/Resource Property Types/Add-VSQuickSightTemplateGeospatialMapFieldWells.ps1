function Add-VSQuickSightTemplateGeospatialMapFieldWells {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.GeospatialMapFieldWells resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.GeospatialMapFieldWells resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapfieldwells.html

    .PARAMETER GeospatialMapAggregatedFieldWells
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-geospatialmapfieldwells.html#cfn-quicksight-template-geospatialmapfieldwells-geospatialmapaggregatedfieldwells
        UpdateType: Mutable
        Type: GeospatialMapAggregatedFieldWells

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.GeospatialMapFieldWells')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $GeospatialMapAggregatedFieldWells
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.GeospatialMapFieldWells'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
