function Add-VSACMPCACertificateApiPassthrough {
    <#
    .SYNOPSIS
        Adds an AWS::ACMPCA::Certificate.ApiPassthrough resource property to the template.

    .DESCRIPTION
        Adds an AWS::ACMPCA::Certificate.ApiPassthrough resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html

    .PARAMETER Extensions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html#cfn-acmpca-certificate-apipassthrough-extensions
        UpdateType: Immutable
        Type: Extensions

    .PARAMETER Subject
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-acmpca-certificate-apipassthrough.html#cfn-acmpca-certificate-apipassthrough-subject
        UpdateType: Immutable
        Type: Subject

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ACMPCA.Certificate.ApiPassthrough')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Extensions,

        [Parameter(Mandatory = $false)]
        $Subject

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ACMPCA.Certificate.ApiPassthrough'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
