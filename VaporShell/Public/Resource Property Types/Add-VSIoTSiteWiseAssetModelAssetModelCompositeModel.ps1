function Add-VSIoTSiteWiseAssetModelAssetModelCompositeModel {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::AssetModel.AssetModelCompositeModel resource property to the template. Contains information about a composite model in an asset model. This object contains the asset property definitions that you define in the composite model. You can use composite asset models to define alarms on this asset model.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::AssetModel.AssetModelCompositeModel resource property to the template.
Contains information about a composite model in an asset model. This object contains the asset property definitions that you define in the composite model. You can use composite asset models to define alarms on this asset model.

If you use the AssetModelCompositeModel property to create an alarm, you must use the following information to define three asset model properties:

+ Use an asset model property to specify the alarm type.

+ The name must be AWS/ALARM_TYPE.

+ The data type must be STRING.

+ For the Type property, the type name must be Attribute and the default value must be IOT_EVENTS.

+ Use an asset model property to specify the alarm source.

+ The name must be AWS/ALARM_SOURCE.

+ The data type must be STRING.

+ For the Type property, the type name must be Attribute and the default value must be the ARN of the alarm model that you created in AWS IoT Events.

**Note**

For the ARN of the alarm model, you can use the Fn::Sub intrinsic function to substitute the AWS::Partition, AWS::Region, and AWS::AccountId variables in an input string with values that you specify.

For example, Fn::Sub: "arn:${AWS::Partition}:iotevents:${AWS::Region}:${AWS::AccountId}:alarmModel/TestAlarmModel".

Replace TestAlarmModel with the name of your alarm model.

For more information about using the Fn::Sub intrinsic function, see Fn::Sub: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-sub.html.

+ Use an asset model property to specify the state of the alarm.

+ The name must be AWS/ALARM_STATE.

+ The data type must be STRUCT.

+ The DataTypeSpec value must be AWS/ALARM_STATE.

+ For the Type property, the type name must be Measurement.

At the bottom of this page, we provide a YAML example that you can modify to create an alarm.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html

    .PARAMETER Description
        The description of the composite model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-description
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Name
        The name of the composite model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-name
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Type
        The type of the composite model. For alarm composite models, this type is AWS/ALARM.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER CompositeModelProperties
        The asset property definitions for this composite model.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-assetmodel-assetmodelcompositemodel.html#cfn-iotsitewise-assetmodel-assetmodelcompositemodel-compositemodelproperties
        UpdateType: Mutable
        Type: List
        ItemType: AssetModelProperty

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTSiteWise.AssetModel.AssetModelCompositeModel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Description,
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
        $Name,
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
        $Type,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.IoTSiteWise.AssetModel.AssetModelProperty"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $CompositeModelProperties
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.AssetModel.AssetModelCompositeModel'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
