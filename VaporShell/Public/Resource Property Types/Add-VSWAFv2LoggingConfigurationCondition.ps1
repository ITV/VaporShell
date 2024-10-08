function Add-VSWAFv2LoggingConfigurationCondition {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::LoggingConfiguration.Condition resource property to the template.

    .DESCRIPTION
        Adds an AWS::WAFv2::LoggingConfiguration.Condition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-condition.html

    .PARAMETER LabelNameCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-condition.html#cfn-wafv2-loggingconfiguration-condition-labelnamecondition
        UpdateType: Mutable
        Type: LabelNameCondition

    .PARAMETER ActionCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-loggingconfiguration-condition.html#cfn-wafv2-loggingconfiguration-condition-actioncondition
        UpdateType: Mutable
        Type: ActionCondition

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WAFv2.LoggingConfiguration.Condition')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $LabelNameCondition,

        [Parameter(Mandatory = $false)]
        $ActionCondition

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.LoggingConfiguration.Condition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
