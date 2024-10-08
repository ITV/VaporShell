function Add-VSPCAConnectorADTemplateTemplateV2 {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Template.TemplateV2 resource property to the template. 

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Template.TemplateV2 resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html

    .PARAMETER SubjectNameFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-subjectnameflags
        UpdateType: Mutable
        Type: SubjectNameFlagsV2

    .PARAMETER SupersededTemplates
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-supersededtemplates
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER PrivateKeyFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-privatekeyflags
        UpdateType: Mutable
        Type: PrivateKeyFlagsV2

    .PARAMETER PrivateKeyAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-privatekeyattributes
        UpdateType: Mutable
        Type: PrivateKeyAttributesV2

    .PARAMETER GeneralFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-generalflags
        UpdateType: Mutable
        Type: GeneralFlagsV2

    .PARAMETER CertificateValidity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-certificatevalidity
        UpdateType: Mutable
        Type: CertificateValidity

    .PARAMETER Extensions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-extensions
        UpdateType: Mutable
        Type: ExtensionsV2

    .PARAMETER EnrollmentFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev2.html#cfn-pcaconnectorad-template-templatev2-enrollmentflags
        UpdateType: Mutable
        Type: EnrollmentFlagsV2

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PCAConnectorAD.Template.TemplateV2')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SubjectNameFlags,
        [parameter(Mandatory = $false)]
        $SupersededTemplates,
        [parameter(Mandatory = $true)]
        $PrivateKeyFlags,
        [parameter(Mandatory = $true)]
        $PrivateKeyAttributes,
        [parameter(Mandatory = $true)]
        $GeneralFlags,
        [parameter(Mandatory = $true)]
        $CertificateValidity,
        [parameter(Mandatory = $true)]
        $Extensions,
        [parameter(Mandatory = $true)]
        $EnrollmentFlags
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Template.TemplateV2'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
