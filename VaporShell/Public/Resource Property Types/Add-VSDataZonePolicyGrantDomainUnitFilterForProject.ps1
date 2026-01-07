function Add-VSDataZonePolicyGrantDomainUnitFilterForProject {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.DomainUnitFilterForProject resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.DomainUnitFilterForProject resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitfilterforproject.html

    .PARAMETER DomainUnit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitfilterforproject.html#cfn-datazone-policygrant-domainunitfilterforproject-domainunit
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER IncludeChildDomainUnits
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-domainunitfilterforproject.html#cfn-datazone-policygrant-domainunitfilterforproject-includechilddomainunits
        UpdateType: Immutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.DomainUnitFilterForProject')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DomainUnit,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IncludeChildDomainUnits

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.DomainUnitFilterForProject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
