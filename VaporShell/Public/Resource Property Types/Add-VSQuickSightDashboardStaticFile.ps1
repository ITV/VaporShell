function Add-VSQuickSightDashboardStaticFile {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.StaticFile resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.StaticFile resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfile.html

    .PARAMETER ImageStaticFile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfile.html#cfn-quicksight-dashboard-staticfile-imagestaticfile
        UpdateType: Mutable
        Type: ImageStaticFile

    .PARAMETER SpatialStaticFile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfile.html#cfn-quicksight-dashboard-staticfile-spatialstaticfile
        UpdateType: Mutable
        Type: SpatialStaticFile

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.StaticFile')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ImageStaticFile,

        [Parameter(Mandatory = $false)]
        $SpatialStaticFile

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.StaticFile'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
