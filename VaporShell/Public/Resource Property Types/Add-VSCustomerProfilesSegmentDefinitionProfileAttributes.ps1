function Add-VSCustomerProfilesSegmentDefinitionProfileAttributes {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::SegmentDefinition.ProfileAttributes resource property to the template.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::SegmentDefinition.ProfileAttributes resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html

    .PARAMETER AdditionalInformation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-additionalinformation
        UpdateType: Immutable
        Type: ExtraLengthValueProfileDimension

    .PARAMETER BusinessName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-businessname
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER Address
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-address
        UpdateType: Immutable
        Type: AddressDimension

    .PARAMETER FirstName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-firstname
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER PersonalEmailAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-personalemailaddress
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER BusinessEmailAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-businessemailaddress
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER Attributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-attributes
        UpdateType: Immutable
        Type: Map
        ItemType: AttributeDimension

    .PARAMETER MailingAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-mailingaddress
        UpdateType: Immutable
        Type: AddressDimension

    .PARAMETER BusinessPhoneNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-businessphonenumber
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER MiddleName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-middlename
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER MobilePhoneNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-mobilephonenumber
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER EmailAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-emailaddress
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER AccountNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-accountnumber
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER BillingAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-billingaddress
        UpdateType: Immutable
        Type: AddressDimension

    .PARAMETER GenderString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-genderstring
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER HomePhoneNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-homephonenumber
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER ShippingAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-shippingaddress
        UpdateType: Immutable
        Type: AddressDimension

    .PARAMETER PhoneNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-phonenumber
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER LastName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-lastname
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER PartyTypeString
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-partytypestring
        UpdateType: Immutable
        Type: ProfileDimension

    .PARAMETER BirthDate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-profileattributes.html#cfn-customerprofiles-segmentdefinition-profileattributes-birthdate
        UpdateType: Immutable
        Type: DateDimension

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CustomerProfiles.SegmentDefinition.ProfileAttributes')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AdditionalInformation,

        [Parameter(Mandatory = $false)]
        $BusinessName,

        [Parameter(Mandatory = $false)]
        $Address,

        [Parameter(Mandatory = $false)]
        $FirstName,

        [Parameter(Mandatory = $false)]
        $PersonalEmailAddress,

        [Parameter(Mandatory = $false)]
        $BusinessEmailAddress,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CustomerProfiles.SegmentDefinition.AttributeDimension"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Attributes,

        [Parameter(Mandatory = $false)]
        $MailingAddress,

        [Parameter(Mandatory = $false)]
        $BusinessPhoneNumber,

        [Parameter(Mandatory = $false)]
        $MiddleName,

        [Parameter(Mandatory = $false)]
        $MobilePhoneNumber,

        [Parameter(Mandatory = $false)]
        $EmailAddress,

        [Parameter(Mandatory = $false)]
        $AccountNumber,

        [Parameter(Mandatory = $false)]
        $BillingAddress,

        [Parameter(Mandatory = $false)]
        $GenderString,

        [Parameter(Mandatory = $false)]
        $HomePhoneNumber,

        [Parameter(Mandatory = $false)]
        $ShippingAddress,

        [Parameter(Mandatory = $false)]
        $PhoneNumber,

        [Parameter(Mandatory = $false)]
        $LastName,

        [Parameter(Mandatory = $false)]
        $PartyTypeString,

        [Parameter(Mandatory = $false)]
        $BirthDate

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.SegmentDefinition.ProfileAttributes'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
