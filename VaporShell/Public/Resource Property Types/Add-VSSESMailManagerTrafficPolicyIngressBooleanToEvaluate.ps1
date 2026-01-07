function Add-VSSESMailManagerTrafficPolicyIngressBooleanToEvaluate {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerTrafficPolicy.IngressBooleanToEvaluate resource property to the template.

    .DESCRIPTION
        Adds an AWS::SES::MailManagerTrafficPolicy.IngressBooleanToEvaluate resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html

    .PARAMETER IsInAddressList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate-isinaddresslist
        UpdateType: Mutable
        Type: IngressIsInAddressList

    .PARAMETER Analysis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate.html#cfn-ses-mailmanagertrafficpolicy-ingressbooleantoevaluate-analysis
        UpdateType: Mutable
        Type: IngressAnalysis

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SES.MailManagerTrafficPolicy.IngressBooleanToEvaluate')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IsInAddressList,

        [Parameter(Mandatory = $false)]
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
