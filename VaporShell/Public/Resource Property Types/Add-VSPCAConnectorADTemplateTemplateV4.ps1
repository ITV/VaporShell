function Add-VSPCAConnectorADTemplateTemplateV4 {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Template.TemplateV4 resource property to the template. 

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Template.TemplateV4 resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html

    .PARAMETER SubjectNameFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-subjectnameflags
        UpdateType: Mutable
        Type: SubjectNameFlagsV4

    .PARAMETER SupersededTemplates
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-supersededtemplates
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER PrivateKeyFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-privatekeyflags
        UpdateType: Mutable
        Type: PrivateKeyFlagsV4

    .PARAMETER PrivateKeyAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-privatekeyattributes
        UpdateType: Mutable
        Type: PrivateKeyAttributesV4

    .PARAMETER GeneralFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-generalflags
        UpdateType: Mutable
        Type: GeneralFlagsV4

    .PARAMETER CertificateValidity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-certificatevalidity
        UpdateType: Mutable
        Type: CertificateValidity

    .PARAMETER Extensions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-extensions
        UpdateType: Mutable
        Type: ExtensionsV4

    .PARAMETER EnrollmentFlags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-enrollmentflags
        UpdateType: Mutable
        Type: EnrollmentFlagsV4

    .PARAMETER HashAlgorithm
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatev4.html#cfn-pcaconnectorad-template-templatev4-hashalgorithm
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PCAConnectorAD.Template.TemplateV4')]
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
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Template.TemplateV4'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
