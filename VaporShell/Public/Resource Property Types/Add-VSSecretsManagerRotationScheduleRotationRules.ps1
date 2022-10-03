function Add-VSSecretsManagerRotationScheduleRotationRules {
    <#
    .SYNOPSIS
        Adds an AWS::SecretsManager::RotationSchedule.RotationRules resource property to the template. A structure that defines the rotation configuration for the secret.

    .DESCRIPTION
        Adds an AWS::SecretsManager::RotationSchedule.RotationRules resource property to the template.
A structure that defines the rotation configuration for the secret.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html

    .PARAMETER ScheduleExpression
        A cron or rate expression that defines the schedule for rotating your secret. Secrets Manager rotation schedules use UTC time zone.
Secrets Manager rate expressions represent the interval in days that you want to rotate your secret, for example rate10 days. If you use a rate expression, the rotation window opens at midnight, and Secrets Manager rotates your secret any time that day after midnight. You can set a Duration to shorten the rotation window.
You can use a cron expression to create rotation schedules that are more detailed than a rotation interval. For more information, including examples, see Schedule expressions in Secrets Manager rotation: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html. If you use a cron expression, Secrets Manager rotates your secret any time during that day after the window opens. For example, cron0 8 1 * ? * represents a rotation window that occurs on the first day of every month beginning at 8:00 AM UTC. Secrets Manager rotates the secret any time that day after 8:00 AM. You can set a Duration to shorten the rotation window.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-scheduleexpression
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Duration
        The length of the rotation window in hours, for example 3h for a three hour window. Secrets Manager rotates your secret at any time during this window. The window must not go into the next UTC day. If you don't specify this value, the window automatically ends at the end of the UTC day. The window begins according to the ScheduleExpression. For more information, including examples, see Schedule expressions in Secrets Manager rotation: https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_schedule.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-duration
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER AutomaticallyAfterDays
        The number of days between automatic scheduled rotations of the secret. You can use this value to check that your secret meets your compliance guidelines for how often secrets must be rotated.
In DescribeSecret and ListSecrets, this value is calculated from the rotation schedule after every successful rotation. In RotateSecret, you can set the rotation schedule in RotationRules with AutomaticallyAfterDays or ScheduleExpression, but not both.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-rotationschedule-rotationrules.html#cfn-secretsmanager-rotationschedule-rotationrules-automaticallyafterdays
        PrimitiveType: Integer
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SecretsManager.RotationSchedule.RotationRules')]
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
        $ScheduleExpression,
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
        $Duration,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AutomaticallyAfterDays
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecretsManager.RotationSchedule.RotationRules'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
