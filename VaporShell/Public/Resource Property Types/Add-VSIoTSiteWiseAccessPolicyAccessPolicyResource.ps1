function Add-VSIoTSiteWiseAccessPolicyAccessPolicyResource {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AccessPolicy.AccessPolicyResource resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AccessPolicy.AccessPolicyResource resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html

    .PARAMETER Project
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html#cfn-iotsitewise-accesspolicy-accesspolicyresource-project
        UpdateType: Mutable
        Type: Project

    .PARAMETER Portal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-accesspolicyresource.html#cfn-iotsitewise-accesspolicy-accesspolicyresource-portal
        UpdateType: Mutable
        Type: Portal

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTSiteWise.AccessPolicy.AccessPolicyResource')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Project,

        [Parameter(Mandatory = $false)]
        $Portal

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
