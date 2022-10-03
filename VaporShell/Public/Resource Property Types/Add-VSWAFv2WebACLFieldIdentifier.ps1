function Add-VSWAFv2WebACLFieldIdentifier {
    <#
    .SYNOPSIS
        Adds an AWS::WAFv2::WebACL.FieldIdentifier resource property to the template. The identifier of the username or password field, used in the ManagedRuleGroupConfig settings.

    .DESCRIPTION
        Adds an AWS::WAFv2::WebACL.FieldIdentifier resource property to the template.
The identifier of the username or password field, used in the ManagedRuleGroupConfig settings.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldidentifier.html

    .PARAMETER Identifier
        The name of the username or password field, used in the ManagedRuleGroupConfig settings.
When the PayloadType is JSON, the identifier must be in JSON pointer syntax. For example /form/username. For information about the JSON Pointer syntax, see the Internet Engineering Task Force IETF documentation JavaScript Object Notation JSON Pointer: https://tools.ietf.org/html/rfc6901.
When the PayloadType is FORM_ENCODED, use the HTML form names. For example, username.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-fieldidentifier.html#cfn-wafv2-webacl-fieldidentifier-identifier
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFv2.WebACL.FieldIdentifier')]
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
        $Identifier
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFv2.WebACL.FieldIdentifier'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
