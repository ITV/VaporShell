function Add-VSB2BIPartnershipOutboundEdiOptions {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Partnership.OutboundEdiOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Partnership.OutboundEdiOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-outboundedioptions.html

    .PARAMETER X12
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-outboundedioptions.html#cfn-b2bi-partnership-outboundedioptions-x12
        UpdateType: Mutable
        Type: X12Envelope

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Partnership.OutboundEdiOptions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $X12

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Partnership.OutboundEdiOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
