function Add-VSDataZonePolicyGrantProjectGrantFilter {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.ProjectGrantFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.ProjectGrantFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectgrantfilter.html

    .PARAMETER DomainUnitFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectgrantfilter.html#cfn-datazone-policygrant-projectgrantfilter-domainunitfilter
        UpdateType: Immutable
        Type: DomainUnitFilterForProject

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.ProjectGrantFilter')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $DomainUnitFilter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.ProjectGrantFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
