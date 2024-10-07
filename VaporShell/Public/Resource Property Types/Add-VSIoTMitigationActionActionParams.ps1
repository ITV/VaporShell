function Add-VSIoTMitigationActionActionParams {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::MitigationAction.ActionParams resource property to the template. 

    .DESCRIPTION
        Adds an AWS::IoT::MitigationAction.ActionParams resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html

    .PARAMETER UpdateDeviceCertificateParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-updatedevicecertificateparams
        UpdateType: Mutable
        Type: UpdateDeviceCertificateParams

    .PARAMETER AddThingsToThingGroupParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-addthingstothinggroupparams
        UpdateType: Mutable
        Type: AddThingsToThingGroupParams

    .PARAMETER PublishFindingToSnsParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-publishfindingtosnsparams
        UpdateType: Mutable
        Type: PublishFindingToSnsParams

    .PARAMETER EnableIoTLoggingParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-enableiotloggingparams
        UpdateType: Mutable
        Type: EnableIoTLoggingParams

    .PARAMETER ReplaceDefaultPolicyVersionParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-replacedefaultpolicyversionparams
        UpdateType: Mutable
        Type: ReplaceDefaultPolicyVersionParams

    .PARAMETER UpdateCACertificateParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-updatecacertificateparams
        UpdateType: Mutable
        Type: UpdateCACertificateParams

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.MitigationAction.ActionParams')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $UpdateDeviceCertificateParams,
        [parameter(Mandatory = $false)]
        $AddThingsToThingGroupParams,
        [parameter(Mandatory = $false)]
        $PublishFindingToSnsParams,
        [parameter(Mandatory = $false)]
        $EnableIoTLoggingParams,
        [parameter(Mandatory = $false)]
        $ReplaceDefaultPolicyVersionParams,
        [parameter(Mandatory = $false)]
        $UpdateCACertificateParams
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoT.MitigationAction.ActionParams'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
