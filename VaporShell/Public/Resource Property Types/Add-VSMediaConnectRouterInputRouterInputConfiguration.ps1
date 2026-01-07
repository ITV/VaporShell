function Add-VSMediaConnectRouterInputRouterInputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterInput.RouterInputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterInput.RouterInputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-routerinputconfiguration.html

    .PARAMETER MediaConnectFlow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-routerinputconfiguration.html#cfn-mediaconnect-routerinput-routerinputconfiguration-mediaconnectflow
        UpdateType: Mutable
        Type: MediaConnectFlowRouterInputConfiguration

    .PARAMETER Failover
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-routerinputconfiguration.html#cfn-mediaconnect-routerinput-routerinputconfiguration-failover
        UpdateType: Mutable
        Type: FailoverRouterInputConfiguration

    .PARAMETER Merge
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-routerinputconfiguration.html#cfn-mediaconnect-routerinput-routerinputconfiguration-merge
        UpdateType: Mutable
        Type: MergeRouterInputConfiguration

    .PARAMETER Standard
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routerinput-routerinputconfiguration.html#cfn-mediaconnect-routerinput-routerinputconfiguration-standard
        UpdateType: Mutable
        Type: StandardRouterInputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterInput.RouterInputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MediaConnectFlow,

        [Parameter(Mandatory = $false)]
        $Failover,

        [Parameter(Mandatory = $false)]
        $Merge,

        [Parameter(Mandatory = $false)]
        $Standard

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterInput.RouterInputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
