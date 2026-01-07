function Add-VSAppIntegrationsApplicationIframeConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppIntegrations::Application.IframeConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppIntegrations::Application.IframeConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-iframeconfig.html

    .PARAMETER Allow
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-iframeconfig.html#cfn-appintegrations-application-iframeconfig-allow
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Sandbox
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appintegrations-application-iframeconfig.html#cfn-appintegrations-application-iframeconfig-sandbox
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppIntegrations.Application.IframeConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Allow,

        [Parameter(Mandatory = $false)]
        $Sandbox

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppIntegrations.Application.IframeConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
