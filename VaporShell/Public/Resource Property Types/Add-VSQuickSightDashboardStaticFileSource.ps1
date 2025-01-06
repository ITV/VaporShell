function Add-VSQuickSightDashboardStaticFileSource {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.StaticFileSource resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.StaticFileSource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfilesource.html

    .PARAMETER UrlOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfilesource.html#cfn-quicksight-dashboard-staticfilesource-urloptions
        UpdateType: Mutable
        Type: StaticFileUrlSourceOptions

    .PARAMETER S3Options
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfilesource.html#cfn-quicksight-dashboard-staticfilesource-s3options
        UpdateType: Mutable
        Type: StaticFileS3SourceOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.StaticFileSource')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $UrlOptions,

        [Parameter(Mandatory = $false)]
        $S3Options

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.StaticFileSource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
