function Add-VSDevOpsGuruNotificationChannelSnsChannelConfig {
    <#
    .SYNOPSIS
        Adds an AWS::DevOpsGuru::NotificationChannel.SnsChannelConfig resource property to the template. Contains the Amazon Resource Name (ARN of an Amazon Simple Notification Service topic.

    .DESCRIPTION
        Adds an AWS::DevOpsGuru::NotificationChannel.SnsChannelConfig resource property to the template.
Contains the Amazon Resource Name (ARN of an Amazon Simple Notification Service topic.

If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. For more information, see Permissions for cross account Amazon SNS topics: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html.

If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.

If you use an Amazon SNS topic that is encrypted by an AWS Key Management Service customer-managed key (CMK, then you must add permissions to the CMK. For more information, see Permissions for AWS KMS–encrypted Amazon SNS topics: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-snschannelconfig.html

    .PARAMETER TopicArn
        The Amazon Resource Name ARN of an Amazon Simple Notification Service topic.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-snschannelconfig.html#cfn-devopsguru-notificationchannel-snschannelconfig-topicarn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DevOpsGuru.NotificationChannel.SnsChannelConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TopicArn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DevOpsGuru.NotificationChannel.SnsChannelConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
