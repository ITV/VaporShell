function Add-VSQuickSightDashboardSheetImageSource {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.SheetImageSource resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.SheetImageSource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheetimagesource.html

    .PARAMETER SheetImageStaticFileSource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sheetimagesource.html#cfn-quicksight-dashboard-sheetimagesource-sheetimagestaticfilesource
        UpdateType: Mutable
        Type: SheetImageStaticFileSource

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.SheetImageSource')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SheetImageStaticFileSource

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.SheetImageSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
