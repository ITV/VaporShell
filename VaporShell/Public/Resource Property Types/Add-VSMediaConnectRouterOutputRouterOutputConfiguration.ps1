function Add-VSMediaConnectRouterOutputRouterOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterOutput.RouterOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterOutput.RouterOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputconfiguration.html

    .PARAMETER MediaLiveInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputconfiguration-medialiveinput
        UpdateType: Mutable
        Type: MediaLiveInputRouterOutputConfiguration

    .PARAMETER MediaConnectFlow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputconfiguration-mediaconnectflow
        UpdateType: Mutable
        Type: MediaConnectFlowRouterOutputConfiguration

    .PARAMETER Standard
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-routeroutputconfiguration.html#cfn-mediaconnect-routeroutput-routeroutputconfiguration-standard
        UpdateType: Mutable
        Type: StandardRouterOutputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterOutput.RouterOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MediaLiveInput,

        [Parameter(Mandatory = $false)]
        $MediaConnectFlow,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterOutput.RouterOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
