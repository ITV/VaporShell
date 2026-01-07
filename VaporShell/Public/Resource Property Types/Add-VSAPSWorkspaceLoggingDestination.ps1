function Add-VSAPSWorkspaceLoggingDestination {
    <#
    .SYNOPSIS
        Adds an AWS::APS::Workspace.LoggingDestination resource property to the template.

    .DESCRIPTION
        Adds an AWS::APS::Workspace.LoggingDestination resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingdestination.html

    .PARAMETER Filters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingdestination.html#cfn-aps-workspace-loggingdestination-filters
        UpdateType: Mutable
        Type: LoggingFilter

    .PARAMETER CloudWatchLogs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-loggingdestination.html#cfn-aps-workspace-loggingdestination-cloudwatchlogs
        UpdateType: Mutable
        Type: CloudWatchLogDestination

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.APS.Workspace.LoggingDestination')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Filters,

        [Parameter(Mandatory = $true)]
        $CloudWatchLogs

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.APS.Workspace.LoggingDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
