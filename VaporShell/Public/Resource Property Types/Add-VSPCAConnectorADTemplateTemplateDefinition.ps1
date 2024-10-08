function Add-VSPCAConnectorADTemplateTemplateDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Template.TemplateDefinition resource property to the template. 

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Template.TemplateDefinition resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatedefinition.html

    .PARAMETER TemplateV4
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatedefinition.html#cfn-pcaconnectorad-template-templatedefinition-templatev4
        UpdateType: Mutable
        Type: TemplateV4

    .PARAMETER TemplateV3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatedefinition.html#cfn-pcaconnectorad-template-templatedefinition-templatev3
        UpdateType: Mutable
        Type: TemplateV3

    .PARAMETER TemplateV2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-template-templatedefinition.html#cfn-pcaconnectorad-template-templatedefinition-templatev2
        UpdateType: Mutable
        Type: TemplateV2

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PCAConnectorAD.Template.TemplateDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $TemplateV4,
        [parameter(Mandatory = $false)]
        $TemplateV3,
        [parameter(Mandatory = $false)]
        $TemplateV2
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Template.TemplateDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
