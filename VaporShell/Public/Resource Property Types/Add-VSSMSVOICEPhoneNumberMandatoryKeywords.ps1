function Add-VSSMSVOICEPhoneNumberMandatoryKeywords {
    <#
    .SYNOPSIS
        Adds an AWS::SMSVOICE::PhoneNumber.MandatoryKeywords resource property to the template.

    .DESCRIPTION
        Adds an AWS::SMSVOICE::PhoneNumber.MandatoryKeywords resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-mandatorykeywords.html

    .PARAMETER HELP
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-mandatorykeywords.html#cfn-smsvoice-phonenumber-mandatorykeywords-help
        UpdateType: Mutable
        Type: MandatoryKeyword

    .PARAMETER STOP
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-phonenumber-mandatorykeywords.html#cfn-smsvoice-phonenumber-mandatorykeywords-stop
        UpdateType: Mutable
        Type: MandatoryKeyword

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SMSVOICE.PhoneNumber.MandatoryKeywords')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $HELP,

        [Parameter(Mandatory = $true)]
        $STOP

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SMSVOICE.PhoneNumber.MandatoryKeywords'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
