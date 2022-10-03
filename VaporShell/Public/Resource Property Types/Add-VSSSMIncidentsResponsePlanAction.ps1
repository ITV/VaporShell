function Add-VSSSMIncidentsResponsePlanAction {
    <#
    .SYNOPSIS
        Adds an AWS::SSMIncidents::ResponsePlan.Action resource property to the template. The Action property type specifies the configuration to launch.

    .DESCRIPTION
        Adds an AWS::SSMIncidents::ResponsePlan.Action resource property to the template.
The Action property type specifies the configuration to launch.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-action.html

    .PARAMETER SsmAutomation
        Details about the Systems Manager automation document that will be used as a runbook during an incident.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-action.html#cfn-ssmincidents-responseplan-action-ssmautomation
        UpdateType: Mutable
        Type: SsmAutomation

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSMIncidents.ResponsePlan.Action')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SsmAutomation
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMIncidents.ResponsePlan.Action'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
