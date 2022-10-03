function Add-VSIoTMitigationActionActionParams {
    <#
    .SYNOPSIS
        Adds an AWS::IoT::MitigationAction.ActionParams resource property to the template. Defines the type of action and the parameters for that action.

    .DESCRIPTION
        Adds an AWS::IoT::MitigationAction.ActionParams resource property to the template.
Defines the type of action and the parameters for that action.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html

    .PARAMETER AddThingsToThingGroupParams
        Specifies the group to which you want to add the devices.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-addthingstothinggroupparams
        UpdateType: Mutable
        Type: AddThingsToThingGroupParams

    .PARAMETER EnableIoTLoggingParams
        Specifies the logging level and the role with permissions for logging. You cannot specify a logging level of DISABLED.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-enableiotloggingparams
        UpdateType: Mutable
        Type: EnableIoTLoggingParams

    .PARAMETER PublishFindingToSnsParams
        Specifies the topic to which the finding should be published.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-publishfindingtosnsparams
        UpdateType: Mutable
        Type: PublishFindingToSnsParams

    .PARAMETER ReplaceDefaultPolicyVersionParams
        Replaces the policy version with a default or blank policy. You specify the template name. Only a value of BLANK_POLICY is currently supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-replacedefaultpolicyversionparams
        UpdateType: Mutable
        Type: ReplaceDefaultPolicyVersionParams

    .PARAMETER UpdateCACertificateParams
        Specifies the new state for the CA certificate. Only a value of DEACTIVATE is currently supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-updatecacertificateparams
        UpdateType: Mutable
        Type: UpdateCACertificateParams

    .PARAMETER UpdateDeviceCertificateParams
        Specifies the new state for a device certificate. Only a value of DEACTIVATE is currently supported.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-mitigationaction-actionparams.html#cfn-iot-mitigationaction-actionparams-updatedevicecertificateparams
        UpdateType: Mutable
        Type: UpdateDeviceCertificateParams

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoT.MitigationAction.ActionParams')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $AddThingsToThingGroupParams,
        [parameter(Mandatory = $false)]
        $EnableIoTLoggingParams,
        [parameter(Mandatory = $false)]
        $PublishFindingToSnsParams,
        [parameter(Mandatory = $false)]
        $ReplaceDefaultPolicyVersionParams,
        [parameter(Mandatory = $false)]
        $UpdateCACertificateParams,
        [parameter(Mandatory = $false)]
        $UpdateDeviceCertificateParams
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
