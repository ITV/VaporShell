function Add-VSPCAConnectorADTemplateTemplateV3 {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Template.TemplateV3 resource property to the template. 

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Template.TemplateV3 resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html

    .PARAMETER SubjectNameFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-subjectnameflags
        UpdateType: Mutable
        Type: SubjectNameFlagsV3

    .PARAMETER SupersededTemplates
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-supersededtemplates
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER PrivateKeyFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-privatekeyflags
        UpdateType: Mutable
        Type: PrivateKeyFlagsV3

    .PARAMETER PrivateKeyAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-privatekeyattributes
        UpdateType: Mutable
        Type: PrivateKeyAttributesV3

    .PARAMETER GeneralFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-generalflags
        UpdateType: Mutable
        Type: GeneralFlagsV3

    .PARAMETER CertificateValidity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-certificatevalidity
        UpdateType: Mutable
        Type: CertificateValidity

    .PARAMETER Extensions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-extensions
        UpdateType: Mutable
        Type: ExtensionsV3

    .PARAMETER EnrollmentFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-enrollmentflags
        UpdateType: Mutable
        Type: EnrollmentFlagsV3

    .PARAMETER HashAlgorithm
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev3.html#cfn-pcaconnectorad-template-templatev3-hashalgorithm
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PCAConnectorAD.Template.TemplateV3')]
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
        $EnrollmentFlags,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HashAlgorithm
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Template.TemplateV3'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
