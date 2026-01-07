function Add-VSDataZonePolicyGrantOverrideDomainUnitOwnersPolicyGrantDetail {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-overridedomainunitownerspolicygrantdetail.html

    .PARAMETER IncludeChildDomainUnits
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-overridedomainunitownerspolicygrantdetail.html#cfn-datazone-policygrant-overridedomainunitownerspolicygrantdetail-includechilddomainunits
        UpdateType: Immutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetail')]
    [CmdletBinding()]

    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.OverrideDomainUnitOwnersPolicyGrantDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
