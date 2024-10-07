function Add-VSRedshiftScheduledActionScheduledActionType {
    <#
    .SYNOPSIS
        Adds an AWS::Redshift::ScheduledAction.ScheduledActionType resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Redshift::ScheduledAction.ScheduledActionType resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html

    .PARAMETER PauseCluster
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-pausecluster
        UpdateType: Mutable
        Type: PauseClusterMessage

    .PARAMETER ResumeCluster
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-resumecluster
        UpdateType: Mutable
        Type: ResumeClusterMessage

    .PARAMETER ResizeCluster
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-resizecluster
        UpdateType: Mutable
        Type: ResizeClusterMessage

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Redshift.ScheduledAction.ScheduledActionType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PauseCluster,
        [parameter(Mandatory = $false)]
        $ResumeCluster,
        [parameter(Mandatory = $false)]
        $ResizeCluster
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Redshift.ScheduledAction.ScheduledActionType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
