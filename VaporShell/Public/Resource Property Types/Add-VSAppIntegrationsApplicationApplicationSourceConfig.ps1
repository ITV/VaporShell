function Add-VSAppIntegrationsApplicationApplicationSourceConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppIntegrations::Application.ApplicationSourceConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppIntegrations::Application.ApplicationSourceConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-applicationsourceconfig.html

    .PARAMETER ExternalUrlConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-applicationsourceconfig.html#cfn-appintegrations-application-applicationsourceconfig-externalurlconfig
        UpdateType: Mutable
        Type: ExternalUrlConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppIntegrations.Application.ApplicationSourceConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ExternalUrlConfig

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppIntegrations.Application.ApplicationSourceConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
