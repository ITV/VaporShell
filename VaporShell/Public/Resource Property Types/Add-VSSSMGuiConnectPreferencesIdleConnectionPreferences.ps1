function Add-VSSSMGuiConnectPreferencesIdleConnectionPreferences {
    <#
    .SYNOPSIS
        Adds an AWS::SSMGuiConnect::Preferences.IdleConnectionPreferences resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SSMGuiConnect::Preferences.IdleConnectionPreferences resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-idleconnectionpreferences.html

    .PARAMETER Timeout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-idleconnectionpreferences.html#cfn-ssmguiconnect-preferences-idleconnectionpreferences-timeout
        UpdateType: Mutable
        Type: IdleConnectionTimeout

    .PARAMETER Alert
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-idleconnectionpreferences.html#cfn-ssmguiconnect-preferences-idleconnectionpreferences-alert
        UpdateType: Mutable
        Type: IdleConnectionAlert

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSMGuiConnect.Preferences.IdleConnectionPreferences')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Timeout,
        [parameter(Mandatory = $false)]
        $Alert
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMGuiConnect.Preferences.IdleConnectionPreferences'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
