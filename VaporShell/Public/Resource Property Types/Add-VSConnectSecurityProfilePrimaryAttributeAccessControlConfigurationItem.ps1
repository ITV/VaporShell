function Add-VSConnectSecurityProfilePrimaryAttributeAccessControlConfigurationItem {
    <#
    .SYNOPSIS
        Adds an AWS::Connect::SecurityProfile.PrimaryAttributeAccessControlConfigurationItem resource property to the template.

    .DESCRIPTION
        Adds an AWS::Connect::SecurityProfile.PrimaryAttributeAccessControlConfigurationItem resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-primaryattributeaccesscontrolconfigurationitem.html

    .PARAMETER PrimaryAttributeValues
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-securityprofile-primaryattributeaccesscontrolconfigurationitem.html#cfn-connect-securityprofile-primaryattributeaccesscontrolconfigurationitem-primaryattributevalues
        UpdateType: Mutable
        Type: List
        ItemType: PrimaryAttributeValue
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Connect.SecurityProfile.PrimaryAttributeAccessControlConfigurationItem')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Connect.SecurityProfile.PrimaryAttributeValue"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $PrimaryAttributeValues

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Connect.SecurityProfile.PrimaryAttributeAccessControlConfigurationItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
