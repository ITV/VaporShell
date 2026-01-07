function Add-VSB2BIPartnershipX12InboundEdiOptions {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Partnership.X12InboundEdiOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Partnership.X12InboundEdiOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12inboundedioptions.html

    .PARAMETER AcknowledgmentOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12inboundedioptions.html#cfn-b2bi-partnership-x12inboundedioptions-acknowledgmentoptions
        UpdateType: Mutable
        Type: X12AcknowledgmentOptions

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Partnership.X12InboundEdiOptions')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AcknowledgmentOptions

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Partnership.X12InboundEdiOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
