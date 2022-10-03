function Add-VSAmplifyDomainSubDomainSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Amplify::Domain.SubDomainSetting resource property to the template. The SubDomainSetting property type enables you to connect a subdomain (for example, example.exampledomain.com to a specific branch.

    .DESCRIPTION
        Adds an AWS::Amplify::Domain.SubDomainSetting resource property to the template.
The SubDomainSetting property type enables you to connect a subdomain (for example, example.exampledomain.com to a specific branch.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html

    .PARAMETER Prefix
        The prefix setting for the subdomain.
*Length Constraints:* Maximum length of 255.
*Pattern:* ?s.*

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-prefix
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER BranchName
        The branch name setting for the subdomain.
*Length Constraints:* Minimum length of 1. Maximum length of 255.
*Pattern:* ?s.+

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-branchname
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Amplify.Domain.SubDomainSetting')]
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
        $Prefix,
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
        $BranchName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Amplify.Domain.SubDomainSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
