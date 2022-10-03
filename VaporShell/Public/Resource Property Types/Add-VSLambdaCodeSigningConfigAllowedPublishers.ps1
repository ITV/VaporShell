function Add-VSLambdaCodeSigningConfigAllowedPublishers {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::CodeSigningConfig.AllowedPublishers resource property to the template. List of signing profiles that can sign a code package.

    .DESCRIPTION
        Adds an AWS::Lambda::CodeSigningConfig.AllowedPublishers resource property to the template.
List of signing profiles that can sign a code package.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-allowedpublishers.html

    .PARAMETER SigningProfileVersionArns
        The Amazon Resource Name ARN for each of the signing profiles. A signing profile defines a trusted user who can sign a code package.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-allowedpublishers.html#cfn-lambda-codesigningconfig-allowedpublishers-signingprofileversionarns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.CodeSigningConfig.AllowedPublishers')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SigningProfileVersionArns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.CodeSigningConfig.AllowedPublishers'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
