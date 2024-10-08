function Add-VSCassandraTableScalingPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::Cassandra::Table.ScalingPolicy resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Cassandra::Table.ScalingPolicy resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-scalingpolicy.html

    .PARAMETER TargetTrackingScalingPolicyConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-scalingpolicy.html#cfn-cassandra-table-scalingpolicy-targettrackingscalingpolicyconfiguration
        UpdateType: Mutable
        Type: TargetTrackingScalingPolicyConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Cassandra.Table.ScalingPolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TargetTrackingScalingPolicyConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cassandra.Table.ScalingPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
