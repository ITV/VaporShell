function Add-VSCustomerProfilesDomainAttributeTypesSelector {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::Domain.AttributeTypesSelector resource property to the template.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::Domain.AttributeTypesSelector resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html

    .PARAMETER Address
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-address
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AttributeMatchingModel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-attributematchingmodel
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER PhoneNumber
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-phonenumber
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER EmailAddress
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-emailaddress
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CustomerProfiles.Domain.AttributeTypesSelector')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Address,

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
        $AttributeMatchingModel,

        [Parameter(Mandatory = $false)]
        $PhoneNumber,

        [Parameter(Mandatory = $false)]
        $EmailAddress

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.Domain.AttributeTypesSelector'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
