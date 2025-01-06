function Add-VSEventsConnectionAuthParameters {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Connection.AuthParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::Events::Connection.AuthParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html

    .PARAMETER InvocationHttpParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-invocationhttpparameters
        UpdateType: Mutable
        Type: ConnectionHttpParameters

    .PARAMETER ConnectivityParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-connectivityparameters
        UpdateType: Mutable
        Type: ConnectivityParameters

    .PARAMETER BasicAuthParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-basicauthparameters
        UpdateType: Mutable
        Type: BasicAuthParameters

    .PARAMETER ApiKeyAuthParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-apikeyauthparameters
        UpdateType: Mutable
        Type: ApiKeyAuthParameters

    .PARAMETER OAuthParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-oauthparameters
        UpdateType: Mutable
        Type: OAuthParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Events.Connection.AuthParameters')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $InvocationHttpParameters,

        [Parameter(Mandatory = $false)]
        $ConnectivityParameters,

        [Parameter(Mandatory = $false)]
        $BasicAuthParameters,

        [Parameter(Mandatory = $false)]
        $ApiKeyAuthParameters,

        [Parameter(Mandatory = $false)]
        $OAuthParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Events.Connection.AuthParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
