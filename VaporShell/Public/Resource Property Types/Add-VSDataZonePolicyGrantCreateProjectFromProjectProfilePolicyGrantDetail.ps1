function Add-VSDataZonePolicyGrantCreateProjectFromProjectProfilePolicyGrantDetail {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail.html

    .PARAMETER ProjectProfiles
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail.html#cfn-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail-projectprofiles
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER IncludeChildDomainUnits
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail.html#cfn-datazone-policygrant-createprojectfromprojectprofilepolicygrantdetail-includechilddomainunits
        UpdateType: Immutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetail')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ProjectProfiles,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.CreateProjectFromProjectProfilePolicyGrantDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
