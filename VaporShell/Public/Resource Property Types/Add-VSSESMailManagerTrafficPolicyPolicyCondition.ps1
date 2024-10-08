function Add-VSSESMailManagerTrafficPolicyPolicyCondition {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerTrafficPolicy.PolicyCondition resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SES::MailManagerTrafficPolicy.PolicyCondition resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html

    .PARAMETER BooleanExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-booleanexpression
        UpdateType: Mutable
        Type: IngressBooleanExpression

    .PARAMETER StringExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-stringexpression
        UpdateType: Mutable
        Type: IngressStringExpression

    .PARAMETER TlsExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-tlsexpression
        UpdateType: Mutable
        Type: IngressTlsProtocolExpression

    .PARAMETER IpExpression
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-policycondition.html#cfn-ses-mailmanagertrafficpolicy-policycondition-ipexpression
        UpdateType: Mutable
        Type: IngressIpv4Expression

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SES.MailManagerTrafficPolicy.PolicyCondition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $BooleanExpression,
        [parameter(Mandatory = $false)]
        $StringExpression,
        [parameter(Mandatory = $false)]
        $TlsExpression,
        [parameter(Mandatory = $false)]
        $IpExpression
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.MailManagerTrafficPolicy.PolicyCondition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
