function Add-VSIoTAnalyticsPipelineActivity {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Pipeline.Activity resource property to the template. 

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Pipeline.Activity resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html

    .PARAMETER SelectAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-selectattributes
        UpdateType: Mutable
        Type: SelectAttributes

    .PARAMETER Datastore
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-datastore
        UpdateType: Mutable
        Type: Datastore

    .PARAMETER Filter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-filter
        UpdateType: Mutable
        Type: Filter

    .PARAMETER AddAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-addattributes
        UpdateType: Mutable
        Type: AddAttributes

    .PARAMETER Channel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-channel
        UpdateType: Mutable
        Type: Channel

    .PARAMETER DeviceShadowEnrich
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceshadowenrich
        UpdateType: Mutable
        Type: DeviceShadowEnrich

    .PARAMETER Math
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-math
        UpdateType: Mutable
        Type: Math

    .PARAMETER Lambda
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-lambda
        UpdateType: Mutable
        Type: Lambda

    .PARAMETER DeviceRegistryEnrich
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-deviceregistryenrich
        UpdateType: Mutable
        Type: DeviceRegistryEnrich

    .PARAMETER RemoveAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-pipeline-activity.html#cfn-iotanalytics-pipeline-activity-removeattributes
        UpdateType: Mutable
        Type: RemoveAttributes

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Pipeline.Activity')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SelectAttributes,
        [parameter(Mandatory = $false)]
        $Datastore,
        [parameter(Mandatory = $false)]
        $Filter,
        [parameter(Mandatory = $false)]
        $AddAttributes,
        [parameter(Mandatory = $false)]
        $Channel,
        [parameter(Mandatory = $false)]
        $DeviceShadowEnrich,
        [parameter(Mandatory = $false)]
        $Math,
        [parameter(Mandatory = $false)]
        $Lambda,
        [parameter(Mandatory = $false)]
        $DeviceRegistryEnrich,
        [parameter(Mandatory = $false)]
        $RemoveAttributes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Pipeline.Activity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
