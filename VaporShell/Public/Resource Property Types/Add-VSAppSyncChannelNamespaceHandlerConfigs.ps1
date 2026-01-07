function Add-VSAppSyncChannelNamespaceHandlerConfigs {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::ChannelNamespace.HandlerConfigs resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppSync::ChannelNamespace.HandlerConfigs resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfigs.html

    .PARAMETER OnPublish
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfigs.html#cfn-appsync-channelnamespace-handlerconfigs-onpublish
        UpdateType: Mutable
        Type: HandlerConfig

    .PARAMETER OnSubscribe
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-handlerconfigs.html#cfn-appsync-channelnamespace-handlerconfigs-onsubscribe
        UpdateType: Mutable
        Type: HandlerConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppSync.ChannelNamespace.HandlerConfigs')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OnPublish,

        [Parameter(Mandatory = $false)]
        $OnSubscribe

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.ChannelNamespace.HandlerConfigs'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
