function Add-VSEVSEnvironmentServiceAccessSecurityGroups {
    <#
    .SYNOPSIS
        Adds an AWS::EVS::Environment.ServiceAccessSecurityGroups resource property to the template.

    .DESCRIPTION
        Adds an AWS::EVS::Environment.ServiceAccessSecurityGroups resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-serviceaccesssecuritygroups.html

    .PARAMETER SecurityGroups
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-serviceaccesssecuritygroups.html#cfn-evs-environment-serviceaccesssecuritygroups-securitygroups
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EVS.Environment.ServiceAccessSecurityGroups')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SecurityGroups

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EVS.Environment.ServiceAccessSecurityGroups'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
