function Add-VSIoTSiteWiseAccessPolicyAccessPolicyResource {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AccessPolicy.AccessPolicyResource resource property to the template. The AWS IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AccessPolicy.AccessPolicyResource resource property to the template.
The AWS IoT SiteWise Monitor resource for this access policy. Choose either a portal or a project.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html

    .PARAMETER Portal
        The AWS IoT SiteWise Monitor portal for this access policy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html#cfn-iotsitewise-accesspolicy-accesspolicyresource-portal
        UpdateType: Mutable
        Type: Portal

    .PARAMETER Project
        The AWS IoT SiteWise Monitor project for this access policy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html#cfn-iotsitewise-accesspolicy-accesspolicyresource-project
        UpdateType: Mutable
        Type: Project

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AccessPolicy.AccessPolicyResource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Portal,
        [parameter(Mandatory = $false)]
        $Project
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AccessPolicy.AccessPolicyResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
