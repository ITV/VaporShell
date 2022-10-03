function Add-VSRedshiftScheduledActionScheduledActionType {
    <#
    .SYNOPSIS
        Adds an AWS::Redshift::ScheduledAction.ScheduledActionType resource property to the template. The action type that specifies an Amazon Redshift API operation that is supported by the Amazon Redshift scheduler.

    .DESCRIPTION
        Adds an AWS::Redshift::ScheduledAction.ScheduledActionType resource property to the template.
The action type that specifies an Amazon Redshift API operation that is supported by the Amazon Redshift scheduler.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html

    .PARAMETER ResizeCluster
        An action that runs a ResizeCluster API operation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-resizecluster
        UpdateType: Mutable
        Type: ResizeClusterMessage

    .PARAMETER PauseCluster
        An action that runs a PauseCluster API operation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-pausecluster
        UpdateType: Mutable
        Type: PauseClusterMessage

    .PARAMETER ResumeCluster
        An action that runs a ResumeCluster API operation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-scheduledactiontype.html#cfn-redshift-scheduledaction-scheduledactiontype-resumecluster
        UpdateType: Mutable
        Type: ResumeClusterMessage

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Redshift.ScheduledAction.ScheduledActionType')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ResizeCluster,
        [parameter(Mandatory = $false)]
        $PauseCluster,
        [parameter(Mandatory = $false)]
        $ResumeCluster
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
