function Add-VSDataZonePolicyGrantProjectPolicyGrantPrincipal {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::PolicyGrant.ProjectPolicyGrantPrincipal resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::PolicyGrant.ProjectPolicyGrantPrincipal resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html

    .PARAMETER ProjectIdentifier
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html#cfn-datazone-policygrant-projectpolicygrantprincipal-projectidentifier
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ProjectDesignation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html#cfn-datazone-policygrant-projectpolicygrantprincipal-projectdesignation
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ProjectGrantFilter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-policygrant-projectpolicygrantprincipal.html#cfn-datazone-policygrant-projectpolicygrantprincipal-projectgrantfilter
        UpdateType: Immutable
        Type: ProjectGrantFilter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.PolicyGrant.ProjectPolicyGrantPrincipal')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ProjectIdentifier,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ProjectDesignation,

        [Parameter(Mandatory = $false)]
        $ProjectGrantFilter

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.PolicyGrant.ProjectPolicyGrantPrincipal'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
