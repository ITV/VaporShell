function Add-VSB2BIPartnershipCapabilityOptions {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Partnership.CapabilityOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Partnership.CapabilityOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-capabilityoptions.html

    .PARAMETER OutboundEdi
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-capabilityoptions.html#cfn-b2bi-partnership-capabilityoptions-outboundedi
        UpdateType: Mutable
        Type: OutboundEdiOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Partnership.CapabilityOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OutboundEdi

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Partnership.CapabilityOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
