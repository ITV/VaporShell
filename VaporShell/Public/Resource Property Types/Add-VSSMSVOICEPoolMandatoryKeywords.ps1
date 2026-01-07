function Add-VSSMSVOICEPoolMandatoryKeywords {
    <#
    .SYNOPSIS
        Adds an AWS::SMSVOICE::Pool.MandatoryKeywords resource property to the template.

    .DESCRIPTION
        Adds an AWS::SMSVOICE::Pool.MandatoryKeywords resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeywords.html

    .PARAMETER HELP
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeywords.html#cfn-smsvoice-pool-mandatorykeywords-help
        UpdateType: Mutable
        Type: MandatoryKeyword

    .PARAMETER STOP
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-pool-mandatorykeywords.html#cfn-smsvoice-pool-mandatorykeywords-stop
        UpdateType: Mutable
        Type: MandatoryKeyword

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SMSVOICE.Pool.MandatoryKeywords')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SMSVOICE.Pool.MandatoryKeywords'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
