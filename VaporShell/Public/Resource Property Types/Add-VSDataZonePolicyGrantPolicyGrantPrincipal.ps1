function Add-VSDataZonePolicyGrantPolicyGrantPrincipal {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.PolicyGrantPrincipal resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.PolicyGrantPrincipal resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html

    .PARAMETER Group
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-group
        UpdateType: Immutable
        Type: GroupPolicyGrantPrincipal

    .PARAMETER Project
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-project
        UpdateType: Immutable
        Type: ProjectPolicyGrantPrincipal

    .PARAMETER User
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-user
        UpdateType: Immutable
        Type: UserPolicyGrantPrincipal

    .PARAMETER DomainUnit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantprincipal.html#cfn-datazone-policygrant-policygrantprincipal-domainunit
        UpdateType: Immutable
        Type: DomainUnitPolicyGrantPrincipal

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.PolicyGrantPrincipal')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Group,

        [Parameter(Mandatory = $false)]
        $Project,

        [Parameter(Mandatory = $false)]
        $User,

        [Parameter(Mandatory = $false)]
        $DomainUnit

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.PolicyGrantPrincipal'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
