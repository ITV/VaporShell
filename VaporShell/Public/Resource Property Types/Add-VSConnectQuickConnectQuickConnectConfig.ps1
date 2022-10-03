function Add-VSConnectQuickConnectQuickConnectConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::QuickConnect.QuickConnectConfig resource property to the template. Contains configuration settings for a quick connect.

    .DESCRIPTION
        Adds an AWS::Connect::QuickConnect.QuickConnectConfig resource property to the template.
Contains configuration settings for a quick connect.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html

    .PARAMETER QuickConnectType
        The type of quick connect. In the Amazon Connect console, when you create a quick connect, you are prompted to assign one of the following types: Agent USER, External PHONE_NUMBER, or Queue QUEUE.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-quickconnecttype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PhoneConfig
        The phone configuration. This is required only if QuickConnectType is PHONE_NUMBER.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-phoneconfig
        UpdateType: Mutable
        Type: PhoneNumberQuickConnectConfig

    .PARAMETER QueueConfig
        The queue configuration. This is required only if QuickConnectType is QUEUE.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-queueconfig
        UpdateType: Mutable
        Type: QueueQuickConnectConfig

    .PARAMETER UserConfig
        The user configuration. This is required only if QuickConnectType is USER.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-quickconnect-quickconnectconfig.html#cfn-connect-quickconnect-quickconnectconfig-userconfig
        UpdateType: Mutable
        Type: UserQuickConnectConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Connect.QuickConnect.QuickConnectConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $QuickConnectType,
        [parameter(Mandatory = $false)]
        $PhoneConfig,
        [parameter(Mandatory = $false)]
        $QueueConfig,
        [parameter(Mandatory = $false)]
        $UserConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.QuickConnect.QuickConnectConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
