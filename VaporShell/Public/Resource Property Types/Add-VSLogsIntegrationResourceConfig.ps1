function Add-VSLogsIntegrationResourceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Logs::Integration.ResourceConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Logs::Integration.ResourceConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-resourceconfig.html

    .PARAMETER OpenSearchResourceConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-resourceconfig.html#cfn-logs-integration-resourceconfig-opensearchresourceconfig
        UpdateType: Immutable
        Type: OpenSearchResourceConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Logs.Integration.ResourceConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OpenSearchResourceConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Logs.Integration.ResourceConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
