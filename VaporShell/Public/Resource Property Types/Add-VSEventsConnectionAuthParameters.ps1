function Add-VSEventsConnectionAuthParameters {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Connection.AuthParameters resource property to the template. <a name="aws-properties-events-connection-authparameters-description"></a>The AuthParameters property type specifies Not currently supported by AWS CloudFormation. for an AWS::Events::Connection: aws-resource-events-connection.md.

    .DESCRIPTION
        Adds an AWS::Events::Connection.AuthParameters resource property to the template.
<a name="aws-properties-events-connection-authparameters-description"></a>The AuthParameters property type specifies Not currently supported by AWS CloudFormation. for an AWS::Events::Connection: aws-resource-events-connection.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html

    .PARAMETER ApiKeyAuthParameters
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-apikeyauthparameters
        UpdateType: Mutable
        Type: ApiKeyAuthParameters

    .PARAMETER BasicAuthParameters
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-basicauthparameters
        UpdateType: Mutable
        Type: BasicAuthParameters

    .PARAMETER OAuthParameters
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-oauthparameters
        UpdateType: Mutable
        Type: OAuthParameters

    .PARAMETER InvocationHttpParameters
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-authparameters.html#cfn-events-connection-authparameters-invocationhttpparameters
        UpdateType: Mutable
        Type: ConnectionHttpParameters

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Events.Connection.AuthParameters')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ApiKeyAuthParameters,
        [parameter(Mandatory = $false)]
        $BasicAuthParameters,
        [parameter(Mandatory = $false)]
        $OAuthParameters,
        [parameter(Mandatory = $false)]
        $InvocationHttpParameters
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
