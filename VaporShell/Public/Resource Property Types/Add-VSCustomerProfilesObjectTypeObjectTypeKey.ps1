function Add-VSCustomerProfilesObjectTypeObjectTypeKey {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::ObjectType.ObjectTypeKey resource property to the template. An object that defines the Key element of a ProfileObject. A Key is a special element that can be used to search for a customer profile.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::ObjectType.ObjectTypeKey resource property to the template.
An object that defines the Key element of a ProfileObject. A Key is a special element that can be used to search for a customer profile.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypekey.html

    .PARAMETER FieldNames
        The reference for the key name of the fields map.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypekey.html#cfn-customerprofiles-objecttype-objecttypekey-fieldnames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER StandardIdentifiers
        The types of keys that a ProfileObject can have. Each ProfileObject can have only 1 UNIQUE key but multiple PROFILE keys. PROFILE means that this key can be used to tie an object to a PROFILE. UNIQUE means that it can be used to uniquely identify an object. If a key a is marked as SECONDARY, it will be used to search for profiles after all other PROFILE keys have been searched. A LOOKUP_ONLY key is only used to match a profile but is not persisted to be used for searching of the profile. A NEW_ONLY key is only used if the profile does not already exist before the object is ingested, otherwise it is only used for matching objects to profiles.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-objecttype-objecttypekey.html#cfn-customerprofiles-objecttype-objecttypekey-standardidentifiers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CustomerProfiles.ObjectType.ObjectTypeKey')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FieldNames,
        [parameter(Mandatory = $false)]
        $StandardIdentifiers
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.ObjectType.ObjectTypeKey'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
