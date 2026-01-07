function Add-VSSESMailManagerTrafficPolicyIngressIpv6Expression {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerTrafficPolicy.IngressIpv6Expression resource property to the template.

    .DESCRIPTION
        Adds an AWS::SES::MailManagerTrafficPolicy.IngressIpv6Expression resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html

    .PARAMETER Operator
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6expression-operator
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Evaluate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6expression-evaluate
        UpdateType: Mutable
        Type: IngressIpv6ToEvaluate

    .PARAMETER Values
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressipv6expression.html#cfn-ses-mailmanagertrafficpolicy-ingressipv6expression-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SES.MailManagerTrafficPolicy.IngressIpv6Expression')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Operator,

        [Parameter(Mandatory = $true)]
        $Evaluate,

        [Parameter(Mandatory = $true)]
        $Values

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.MailManagerTrafficPolicy.IngressIpv6Expression'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
