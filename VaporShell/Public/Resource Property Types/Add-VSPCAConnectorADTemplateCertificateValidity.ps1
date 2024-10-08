function Add-VSPCAConnectorADTemplateCertificateValidity {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Template.CertificateValidity resource property to the template.

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Template.CertificateValidity resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-certificatevalidity.html

    .PARAMETER ValidityPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-certificatevalidity.html#cfn-pcaconnectorad-template-certificatevalidity-validityperiod
        UpdateType: Mutable
        Type: ValidityPeriod

    .PARAMETER RenewalPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-certificatevalidity.html#cfn-pcaconnectorad-template-certificatevalidity-renewalperiod
        UpdateType: Mutable
        Type: ValidityPeriod

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.PCAConnectorAD.Template.CertificateValidity')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ValidityPeriod,

        [Parameter(Mandatory = $true)]
        $RenewalPeriod

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Template.CertificateValidity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
