function Add-VSDataZonePolicyGrantCreateEnvironmentProfilePolicyGrantDetail {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.CreateEnvironmentProfilePolicyGrantDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.CreateEnvironmentProfilePolicyGrantDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createenvironmentprofilepolicygrantdetail.html

    .PARAMETER DomainUnitId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createenvironmentprofilepolicygrantdetail.html#cfn-datazone-policygrant-createenvironmentprofilepolicygrantdetail-domainunitid
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.CreateEnvironmentProfilePolicyGrantDetail')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DomainUnitId

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.CreateEnvironmentProfilePolicyGrantDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
