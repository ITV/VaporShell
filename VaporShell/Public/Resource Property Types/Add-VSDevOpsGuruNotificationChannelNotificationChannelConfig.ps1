function Add-VSDevOpsGuruNotificationChannelNotificationChannelConfig {
    <#
    .SYNOPSIS
        Adds an AWS::DevOpsGuru::NotificationChannel.NotificationChannelConfig resource property to the template. Information about notification channels you have configured with DevOps Guru. The one supported notification channel is Amazon Simple Notification Service (Amazon SNS.

    .DESCRIPTION
        Adds an AWS::DevOpsGuru::NotificationChannel.NotificationChannelConfig resource property to the template.
Information about notification channels you have configured with DevOps Guru. The one supported notification channel is Amazon Simple Notification Service (Amazon SNS.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationchannelconfig.html

    .PARAMETER Sns
        Information about a notification channel configured in DevOps Guru to send notifications when insights are created.
If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. DevOps Guru only supports standard SNS topics. For more information, see Permissions for cross account Amazon SNS topics: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-required-permissions.html.
If you use an Amazon SNS topic in another account, you must attach a policy to it that grants DevOps Guru permission to it notifications. DevOps Guru adds the required policy on your behalf to send notifications using Amazon SNS in your account. For more information, see Permissions for cross account Amazon SNS topics.
If you use an Amazon SNS topic that is encrypted by an AWS Key Management Service customer-managed key CMK, then you must add permissions to the CMK. For more information, see Permissions for AWS KMS–encrypted Amazon SNS topics: https://docs.aws.amazon.com/devops-guru/latest/userguide/sns-kms-permissions.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-notificationchannel-notificationchannelconfig.html#cfn-devopsguru-notificationchannel-notificationchannelconfig-sns
        UpdateType: Immutable
        Type: SnsChannelConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DevOpsGuru.NotificationChannel.NotificationChannelConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Sns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DevOpsGuru.NotificationChannel.NotificationChannelConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
