function Add-VSSecurityHubConfigurationPolicySecurityControlsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::SecurityHub::ConfigurationPolicy.SecurityControlsConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SecurityHub::ConfigurationPolicy.SecurityControlsConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-securitycontrolsconfiguration.html

    .PARAMETER DisabledSecurityControlIdentifiers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-securitycontrolsconfiguration.html#cfn-securityhub-configurationpolicy-securitycontrolsconfiguration-disabledsecuritycontrolidentifiers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER EnabledSecurityControlIdentifiers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-securitycontrolsconfiguration.html#cfn-securityhub-configurationpolicy-securitycontrolsconfiguration-enabledsecuritycontrolidentifiers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER SecurityControlCustomParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-configurationpolicy-securitycontrolsconfiguration.html#cfn-securityhub-configurationpolicy-securitycontrolsconfiguration-securitycontrolcustomparameters
        UpdateType: Mutable
        Type: List
        ItemType: SecurityControlCustomParameter
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SecurityHub.ConfigurationPolicy.SecurityControlsConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DisabledSecurityControlIdentifiers,
        [parameter(Mandatory = $false)]
        $EnabledSecurityControlIdentifiers,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SecurityHub.ConfigurationPolicy.SecurityControlCustomParameter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SecurityControlCustomParameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SecurityHub.ConfigurationPolicy.SecurityControlsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
