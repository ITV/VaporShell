function Add-VSAppRunnerServiceNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::AppRunner::Service.NetworkConfiguration resource property to the template. Describes configuration settings related to network traffic of an AWS App Runner service. Consists of embedded objects for each configurable network feature.

    .DESCRIPTION
        Adds an AWS::AppRunner::Service.NetworkConfiguration resource property to the template.
Describes configuration settings related to network traffic of an AWS App Runner service. Consists of embedded objects for each configurable network feature.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-networkconfiguration.html

    .PARAMETER EgressConfiguration
        Network configuration settings for outbound message traffic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apprunner-service-networkconfiguration.html#cfn-apprunner-service-networkconfiguration-egressconfiguration
        UpdateType: Mutable
        Type: EgressConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppRunner.Service.NetworkConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $EgressConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppRunner.Service.NetworkConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
