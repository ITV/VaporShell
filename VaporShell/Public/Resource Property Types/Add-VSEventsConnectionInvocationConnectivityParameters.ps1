function Add-VSEventsConnectionInvocationConnectivityParameters {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Connection.InvocationConnectivityParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::Events::Connection.InvocationConnectivityParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-invocationconnectivityparameters.html

    .PARAMETER ResourceParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-invocationconnectivityparameters.html#cfn-events-connection-invocationconnectivityparameters-resourceparameters
        UpdateType: Mutable
        Type: ResourceParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Events.Connection.InvocationConnectivityParameters')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ResourceParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Events.Connection.InvocationConnectivityParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
