function Add-VSSageMakerMonitoringScheduleJson {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::MonitoringSchedule.Json resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::MonitoringSchedule.Json resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-json.html

    .PARAMETER Line
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-json.html#cfn-sagemaker-monitoringschedule-json-line
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.MonitoringSchedule.Json')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Line

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.MonitoringSchedule.Json'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
