function Add-VSTimestreamScheduledQueryErrorReportConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Timestream::ScheduledQuery.ErrorReportConfiguration resource property to the template. Configuration required for error reporting.

    .DESCRIPTION
        Adds an AWS::Timestream::ScheduledQuery.ErrorReportConfiguration resource property to the template.
Configuration required for error reporting.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-errorreportconfiguration.html

    .PARAMETER S3Configuration
        The S3 configuration for the error reports.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-errorreportconfiguration.html#cfn-timestream-scheduledquery-errorreportconfiguration-s3configuration
        UpdateType: Immutable
        Type: S3Configuration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Timestream.ScheduledQuery.ErrorReportConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3Configuration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Timestream.ScheduledQuery.ErrorReportConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
