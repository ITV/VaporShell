function Add-VSPCAConnectorSCEPConnectorMobileDeviceManagement {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorSCEP::Connector.MobileDeviceManagement resource property to the template. 

    .DESCRIPTION
        Adds an AWS::PCAConnectorSCEP::Connector.MobileDeviceManagement resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-mobiledevicemanagement.html

    .PARAMETER Intune
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorscep-connector-mobiledevicemanagement.html#cfn-pcaconnectorscep-connector-mobiledevicemanagement-intune
        UpdateType: Immutable
        Type: IntuneConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.PCAConnectorSCEP.Connector.MobileDeviceManagement')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Intune
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorSCEP.Connector.MobileDeviceManagement'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
