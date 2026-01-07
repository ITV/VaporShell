function Add-VSDataZonePolicyGrantPolicyGrantDetail {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.PolicyGrantDetail resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.PolicyGrantDetail resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html

    .PARAMETER CreateEnvironmentFromBlueprint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createenvironmentfromblueprint
        UpdateType: Immutable
        PrimitiveType: Json

    .PARAMETER CreateGlossary
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createglossary
        UpdateType: Immutable
        Type: CreateGlossaryPolicyGrantDetail

    .PARAMETER CreateAssetType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createassettype
        UpdateType: Immutable
        Type: CreateAssetTypePolicyGrantDetail

    .PARAMETER CreateDomainUnit
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createdomainunit
        UpdateType: Immutable
        Type: CreateDomainUnitPolicyGrantDetail

    .PARAMETER CreateProject
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createproject
        UpdateType: Immutable
        Type: CreateProjectPolicyGrantDetail

    .PARAMETER OverrideProjectOwners
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-overrideprojectowners
        UpdateType: Immutable
        Type: OverrideProjectOwnersPolicyGrantDetail

    .PARAMETER AddToProjectMemberPool
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-addtoprojectmemberpool
        UpdateType: Immutable
        Type: AddToProjectMemberPoolPolicyGrantDetail

    .PARAMETER DelegateCreateEnvironmentProfile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-delegatecreateenvironmentprofile
        UpdateType: Immutable
        PrimitiveType: Json

    .PARAMETER CreateProjectFromProjectProfile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createprojectfromprojectprofile
        UpdateType: Immutable
        Type: CreateProjectFromProjectProfilePolicyGrantDetail

    .PARAMETER CreateEnvironment
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createenvironment
        UpdateType: Immutable
        PrimitiveType: Json

    .PARAMETER CreateEnvironmentProfile
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createenvironmentprofile
        UpdateType: Immutable
        Type: CreateEnvironmentProfilePolicyGrantDetail

    .PARAMETER CreateFormType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-createformtype
        UpdateType: Immutable
        Type: CreateFormTypePolicyGrantDetail

    .PARAMETER OverrideDomainUnitOwners
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-policygrantdetail.html#cfn-datazone-policygrant-policygrantdetail-overridedomainunitowners
        UpdateType: Immutable
        Type: OverrideDomainUnitOwnersPolicyGrantDetail

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.PolicyGrantDetail')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CreateEnvironmentFromBlueprint,

        [Parameter(Mandatory = $false)]
        $CreateGlossary,

        [Parameter(Mandatory = $false)]
        $CreateAssetType,

        [Parameter(Mandatory = $false)]
        $CreateDomainUnit,

        [Parameter(Mandatory = $false)]
        $CreateProject,

        [Parameter(Mandatory = $false)]
        $OverrideProjectOwners,

        [Parameter(Mandatory = $false)]
        $AddToProjectMemberPool,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DelegateCreateEnvironmentProfile,

        [Parameter(Mandatory = $false)]
        $CreateProjectFromProjectProfile,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","System.Collections.Hashtable","System.Management.Automation.PSCustomObject"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CreateEnvironment,

        [Parameter(Mandatory = $false)]
        $CreateEnvironmentProfile,

        [Parameter(Mandatory = $false)]
        $CreateFormType,

        [Parameter(Mandatory = $false)]
        $OverrideDomainUnitOwners

    )

    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }

    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                'CreateEnvironmentFromBlueprint' {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                'DelegateCreateEnvironmentProfile' {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                'CreateEnvironment' {
                    if (($PSBoundParameters[$key]).PSObject.TypeNames -contains "System.String"){
                        try {
                            $JSONObject = (ConvertFrom-Json -InputObject $PSBoundParameters[$key] -ErrorAction Stop)
                        }
                        catch {
                            $PSCmdlet.ThrowTerminatingError((New-VSError -String "Unable to convert parameter '$key' string value to PSObject! Please use a JSON string OR provide a Hashtable or PSCustomObject instead!"))
                        }
                    }
                    else {
                        $JSONObject = ([PSCustomObject]$PSBoundParameters[$key])
                    }
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $JSONObject
                }
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }

    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.PolicyGrantDetail'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
