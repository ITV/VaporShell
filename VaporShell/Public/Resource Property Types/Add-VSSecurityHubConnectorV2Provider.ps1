function Add-VSSecurityHubConnectorV2Provider {
    <#
    .SYNOPSIS
        Adds an AWS::SecurityHub::ConnectorV2.Provider resource property to the template.

    .DESCRIPTION
        Adds an AWS::SecurityHub::ConnectorV2.Provider resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-connectorv2-provider.html

    .PARAMETER ServiceNow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-connectorv2-provider.html#cfn-securityhub-connectorv2-provider-servicenow
        UpdateType: Mutable
        Type: ServiceNowProviderConfiguration

    .PARAMETER JiraCloud
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-connectorv2-provider.html#cfn-securityhub-connectorv2-provider-jiracloud
        UpdateType: Mutable
        Type: JiraCloudProviderConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SecurityHub.ConnectorV2.Provider')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ServiceNow,

        [Parameter(Mandatory = $false)]
        $JiraCloud

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecurityHub.ConnectorV2.Provider'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
