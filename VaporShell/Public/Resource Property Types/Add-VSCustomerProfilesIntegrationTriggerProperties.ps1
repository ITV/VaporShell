function Add-VSCustomerProfilesIntegrationTriggerProperties {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::Integration.TriggerProperties resource property to the template. <a name="aws-properties-customerprofiles-integration-triggerproperties-description"></a>The TriggerProperties property type specifies Not currently supported by AWS CloudFormation. for an AWS::CustomerProfiles::Integration: aws-resource-customerprofiles-integration.md.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::Integration.TriggerProperties resource property to the template.
<a name="aws-properties-customerprofiles-integration-triggerproperties-description"></a>The TriggerProperties property type specifies Not currently supported by AWS CloudFormation. for an AWS::CustomerProfiles::Integration: aws-resource-customerprofiles-integration.md.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-triggerproperties.html

    .PARAMETER Scheduled
        Not currently supported by AWS CloudFormation.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-integration-triggerproperties.html#cfn-customerprofiles-integration-triggerproperties-scheduled
        UpdateType: Mutable
        Type: ScheduledTriggerProperties

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CustomerProfiles.Integration.TriggerProperties')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Scheduled
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.Integration.TriggerProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
