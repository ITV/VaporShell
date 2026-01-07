function Add-VSSESMailManagerIngressPointNetworkConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::SES::MailManagerIngressPoint.NetworkConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::SES::MailManagerIngressPoint.NetworkConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-networkconfiguration.html

    .PARAMETER PublicNetworkConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-networkconfiguration.html#cfn-ses-mailmanageringresspoint-networkconfiguration-publicnetworkconfiguration
        UpdateType: Immutable
        Type: PublicNetworkConfiguration

    .PARAMETER PrivateNetworkConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanageringresspoint-networkconfiguration.html#cfn-ses-mailmanageringresspoint-networkconfiguration-privatenetworkconfiguration
        UpdateType: Immutable
        Type: PrivateNetworkConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SES.MailManagerIngressPoint.NetworkConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PublicNetworkConfiguration,

        [Parameter(Mandatory = $false)]
        $PrivateNetworkConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SES.MailManagerIngressPoint.NetworkConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
