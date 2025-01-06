function Add-VSB2BIPartnershipX12OutboundEdiHeaders {
    <#
    .SYNOPSIS
        Adds an AWS::B2BI::Partnership.X12OutboundEdiHeaders resource property to the template.

    .DESCRIPTION
        Adds an AWS::B2BI::Partnership.X12OutboundEdiHeaders resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html

    .PARAMETER Delimiters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-delimiters
        UpdateType: Mutable
        Type: X12Delimiters

    .PARAMETER FunctionalGroupHeaders
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-functionalgroupheaders
        UpdateType: Mutable
        Type: X12FunctionalGroupHeaders

    .PARAMETER InterchangeControlHeaders
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-interchangecontrolheaders
        UpdateType: Mutable
        Type: X12InterchangeControlHeaders

    .PARAMETER ValidateEdi
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-partnership-x12outboundediheaders.html#cfn-b2bi-partnership-x12outboundediheaders-validateedi
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.B2BI.Partnership.X12OutboundEdiHeaders')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Delimiters,

        [Parameter(Mandatory = $false)]
        $FunctionalGroupHeaders,

        [Parameter(Mandatory = $false)]
        $InterchangeControlHeaders,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ValidateEdi

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.B2BI.Partnership.X12OutboundEdiHeaders'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
