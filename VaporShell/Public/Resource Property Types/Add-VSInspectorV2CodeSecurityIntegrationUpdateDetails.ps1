function Add-VSInspectorV2CodeSecurityIntegrationUpdateDetails {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::CodeSecurityIntegration.UpdateDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::InspectorV2::CodeSecurityIntegration.UpdateDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updatedetails.html

    .PARAMETER gitlabSelfManaged
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updatedetails.html#cfn-inspectorv2-codesecurityintegration-updatedetails-gitlabselfmanaged
        UpdateType: Mutable
        Type: UpdateGitLabSelfManagedIntegrationDetail

    .PARAMETER github
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updatedetails.html#cfn-inspectorv2-codesecurityintegration-updatedetails-github
        UpdateType: Mutable
        Type: UpdateGitHubIntegrationDetail

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.InspectorV2.CodeSecurityIntegration.UpdateDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $gitlabSelfManaged,

        [Parameter(Mandatory = $false)]
        $github

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.CodeSecurityIntegration.UpdateDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
