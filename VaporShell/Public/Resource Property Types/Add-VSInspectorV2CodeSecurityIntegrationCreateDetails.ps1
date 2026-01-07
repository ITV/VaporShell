function Add-VSInspectorV2CodeSecurityIntegrationCreateDetails {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::CodeSecurityIntegration.CreateDetails resource property to the template.

    .DESCRIPTION
        Adds an AWS::InspectorV2::CodeSecurityIntegration.CreateDetails resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-createdetails.html

    .PARAMETER gitlabSelfManaged
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-createdetails.html#cfn-inspectorv2-codesecurityintegration-createdetails-gitlabselfmanaged
        UpdateType: Immutable
        Type: CreateGitLabSelfManagedIntegrationDetail

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.InspectorV2.CodeSecurityIntegration.CreateDetails')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $gitlabSelfManaged

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.CodeSecurityIntegration.CreateDetails'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
