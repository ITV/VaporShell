function Add-VSCloudFrontDistributionTenantCustomizations {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFront::DistributionTenant.Customizations resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFront::DistributionTenant.Customizations resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html

    .PARAMETER WebAcl
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html#cfn-cloudfront-distributiontenant-customizations-webacl
        UpdateType: Mutable
        Type: WebAclCustomization

    .PARAMETER GeoRestrictions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html#cfn-cloudfront-distributiontenant-customizations-georestrictions
        UpdateType: Mutable
        Type: GeoRestrictionCustomization

    .PARAMETER Certificate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-customizations.html#cfn-cloudfront-distributiontenant-customizations-certificate
        UpdateType: Mutable
        Type: Certificate

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFront.DistributionTenant.Customizations')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $WebAcl,

        [Parameter(Mandatory = $false)]
        $GeoRestrictions,

        [Parameter(Mandatory = $false)]
        $Certificate

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFront.DistributionTenant.Customizations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
