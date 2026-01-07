function Add-VSLocationAPIKeyApiKeyRestrictions {
    <#
    .SYNOPSIS
        Adds an AWS::Location::APIKey.ApiKeyRestrictions resource property to the template.

    .DESCRIPTION
        Adds an AWS::Location::APIKey.ApiKeyRestrictions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-apikey-apikeyrestrictions.html

    .PARAMETER AllowActions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-apikey-apikeyrestrictions.html#cfn-location-apikey-apikeyrestrictions-allowactions
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowResources
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-apikey-apikeyrestrictions.html#cfn-location-apikey-apikeyrestrictions-allowresources
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowAndroidApps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-apikey-apikeyrestrictions.html#cfn-location-apikey-apikeyrestrictions-allowandroidapps
        UpdateType: Mutable
        Type: List
        ItemType: AndroidApp
        DuplicatesAllowed: True

    .PARAMETER AllowReferers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-apikey-apikeyrestrictions.html#cfn-location-apikey-apikeyrestrictions-allowreferers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowAppleApps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-location-apikey-apikeyrestrictions.html#cfn-location-apikey-apikeyrestrictions-allowappleapps
        UpdateType: Mutable
        Type: List
        ItemType: AppleApp
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Location.APIKey.ApiKeyRestrictions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $AllowActions,

        [Parameter(Mandatory = $true)]
        $AllowResources,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Location.APIKey.AndroidApp"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AllowAndroidApps,

        [Parameter(Mandatory = $false)]
        $AllowReferers,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Location.APIKey.AppleApp"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AllowAppleApps

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Location.APIKey.ApiKeyRestrictions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
