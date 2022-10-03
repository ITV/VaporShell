function Add-VSLookoutMetricsAlertAction {
    <#
    .SYNOPSIS
        Adds an AWS::LookoutMetrics::Alert.Action resource property to the template. A configuration that specifies the action to perform when anomalies are detected.

    .DESCRIPTION
        Adds an AWS::LookoutMetrics::Alert.Action resource property to the template.
A configuration that specifies the action to perform when anomalies are detected.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-action.html

    .PARAMETER SNSConfiguration
        A configuration for an Amazon SNS channel.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-action.html#cfn-lookoutmetrics-alert-action-snsconfiguration
        UpdateType: Immutable
        Type: SNSConfiguration

    .PARAMETER LambdaConfiguration
        A configuration for an AWS Lambda channel.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-alert-action.html#cfn-lookoutmetrics-alert-action-lambdaconfiguration
        UpdateType: Immutable
        Type: LambdaConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LookoutMetrics.Alert.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SNSConfiguration,
        [parameter(Mandatory = $false)]
        $LambdaConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LookoutMetrics.Alert.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
