function Add-VSLambdaCodeSigningConfigCodeSigningPolicies {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::CodeSigningConfig.CodeSigningPolicies resource property to the template. Code signing configuration policies: https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html#config-codesigning-policies specify the validation failure action for signature mismatch or expiry.

    .DESCRIPTION
        Adds an AWS::Lambda::CodeSigningConfig.CodeSigningPolicies resource property to the template.
Code signing configuration policies: https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html#config-codesigning-policies specify the validation failure action for signature mismatch or expiry.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-codesigningpolicies.html

    .PARAMETER UntrustedArtifactOnDeployment
        Code signing configuration policy for deployment validation failure. If you set the policy to Enforce, Lambda blocks the deployment request if signature validation checks fail. If you set the policy to Warn, Lambda allows the deployment and creates a CloudWatch log.
Default value: Warn

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-codesigningconfig-codesigningpolicies.html#cfn-lambda-codesigningconfig-codesigningpolicies-untrustedartifactondeployment
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.CodeSigningConfig.CodeSigningPolicies')]
    [cmdletbinding()]
    Param
    (
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
        $UntrustedArtifactOnDeployment
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.CodeSigningConfig.CodeSigningPolicies'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
