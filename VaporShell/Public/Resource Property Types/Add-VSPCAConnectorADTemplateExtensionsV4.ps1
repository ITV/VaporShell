function Add-VSPCAConnectorADTemplateExtensionsV4 {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Template.ExtensionsV4 resource property to the template. 

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Template.ExtensionsV4 resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-extensionsv4.html

    .PARAMETER ApplicationPolicies
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-extensionsv4.html#cfn-pcaconnectorad-template-extensionsv4-applicationpolicies
        UpdateType: Mutable
        Type: ApplicationPolicies

    .PARAMETER KeyUsage
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-extensionsv4.html#cfn-pcaconnectorad-template-extensionsv4-keyusage
        UpdateType: Mutable
        Type: KeyUsage

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PCAConnectorAD.Template.ExtensionsV4')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ApplicationPolicies,
        [parameter(Mandatory = $true)]
        $KeyUsage
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Template.ExtensionsV4'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
