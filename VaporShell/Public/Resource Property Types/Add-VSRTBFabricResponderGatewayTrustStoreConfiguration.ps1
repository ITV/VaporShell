function Add-VSRTBFabricResponderGatewayTrustStoreConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::ResponderGateway.TrustStoreConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::ResponderGateway.TrustStoreConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-truststoreconfiguration.html

    .PARAMETER CertificateAuthorityCertificates
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-respondergateway-truststoreconfiguration.html#cfn-rtbfabric-respondergateway-truststoreconfiguration-certificateauthoritycertificates
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.ResponderGateway.TrustStoreConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $CertificateAuthorityCertificates

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.ResponderGateway.TrustStoreConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
