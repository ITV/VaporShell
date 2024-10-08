function Add-VSSESMailManagerTrafficPolicyIngressBooleanToEvaluate {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerTrafficPolicy.IngressBooleanToEvaluate resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SES::MailManagerTrafficPolicy.IngressBooleanToEvaluate resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html

    .PARAMETER Analysis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate-analysis
        UpdateType: Mutable
        Type: IngressAnalysis

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SES.MailManagerTrafficPolicy.IngressBooleanToEvaluate')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Analysis
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.MailManagerTrafficPolicy.IngressBooleanToEvaluate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
