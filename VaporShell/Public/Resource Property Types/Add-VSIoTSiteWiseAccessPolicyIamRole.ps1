function Add-VSIoTSiteWiseAccessPolicyIamRole {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AccessPolicy.IamRole resource property to the template. Contains information about an AWS Identity and Access Management role. For more information, see IAM roles: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the *IAM User Guide*.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AccessPolicy.IamRole resource property to the template.
Contains information about an AWS Identity and Access Management role. For more information, see IAM roles: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html in the *IAM User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-iamrole.html

    .PARAMETER arn
        The ARN of the IAM role. For more information, see IAM ARNs: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html in the *IAM User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-accesspolicy-iamrole.html#cfn-iotsitewise-accesspolicy-iamrole-arn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AccessPolicy.IamRole')]
    [cmdletbinding()]
    Param
    (
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
        $arn
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AccessPolicy.IamRole'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
