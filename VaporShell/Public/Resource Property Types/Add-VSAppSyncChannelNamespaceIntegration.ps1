function Add-VSAppSyncChannelNamespaceIntegration {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::ChannelNamespace.Integration resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppSync::ChannelNamespace.Integration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-integration.html

    .PARAMETER DataSourceName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-integration.html#cfn-appsync-channelnamespace-integration-datasourcename
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LambdaConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-channelnamespace-integration.html#cfn-appsync-channelnamespace-integration-lambdaconfig
        UpdateType: Mutable
        Type: LambdaConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppSync.ChannelNamespace.Integration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DataSourceName,

        [Parameter(Mandatory = $false)]
        $LambdaConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.ChannelNamespace.Integration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
