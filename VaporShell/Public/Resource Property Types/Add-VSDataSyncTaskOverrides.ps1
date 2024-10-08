function Add-VSDataSyncTaskOverrides {
    <#
    .SYNOPSIS
        Adds an AWS::DataSync::Task.Overrides resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataSync::Task.Overrides resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html

    .PARAMETER Verified
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-verified
        UpdateType: Mutable
        Type: Verified

    .PARAMETER Skipped
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-skipped
        UpdateType: Mutable
        Type: Skipped

    .PARAMETER Transferred
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-transferred
        UpdateType: Mutable
        Type: Transferred

    .PARAMETER Deleted
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-overrides.html#cfn-datasync-task-overrides-deleted
        UpdateType: Mutable
        Type: Deleted

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataSync.Task.Overrides')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Verified,

        [Parameter(Mandatory = $false)]
        $Skipped,

        [Parameter(Mandatory = $false)]
        $Transferred,

        [Parameter(Mandatory = $false)]
        $Deleted

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataSync.Task.Overrides'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
