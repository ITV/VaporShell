function Add-VSMediaLiveChannelFailoverCondition {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Channel.FailoverCondition resource property to the template. Failover Condition settings. There can be multiple failover conditions inside AutomaticInputFailoverSettings.

    .DESCRIPTION
        Adds an AWS::MediaLive::Channel.FailoverCondition resource property to the template.
Failover Condition settings. There can be multiple failover conditions inside AutomaticInputFailoverSettings.

The parent of this entity is AutomaticInputFailoverSettings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failovercondition.html

    .PARAMETER FailoverConditionSettings
        Settings for a specific failover condition.

        Type: FailoverConditionSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failovercondition.html#cfn-medialive-channel-failovercondition-failoverconditionsettings
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Channel.FailoverCondition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FailoverConditionSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Channel.FailoverCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
