function Add-VSAppIntegrationsApplicationApplicationConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppIntegrations::Application.ApplicationConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppIntegrations::Application.ApplicationConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-applicationconfig.html

    .PARAMETER ContactHandling
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-applicationconfig.html#cfn-appintegrations-application-applicationconfig-contacthandling
        UpdateType: Mutable
        Type: ContactHandling

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppIntegrations.Application.ApplicationConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ContactHandling

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppIntegrations.Application.ApplicationConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
