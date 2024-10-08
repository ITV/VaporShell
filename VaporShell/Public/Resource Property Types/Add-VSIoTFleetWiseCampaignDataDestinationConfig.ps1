function Add-VSIoTFleetWiseCampaignDataDestinationConfig {
    <#
    .SYNOPSIS
        Adds an AWS::IoTFleetWise::Campaign.DataDestinationConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::IoTFleetWise::Campaign.DataDestinationConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datadestinationconfig.html

    .PARAMETER S3Config
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datadestinationconfig.html#cfn-iotfleetwise-campaign-datadestinationconfig-s3config
        UpdateType: Mutable
        Type: S3Config

    .PARAMETER MqttTopicConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datadestinationconfig.html#cfn-iotfleetwise-campaign-datadestinationconfig-mqtttopicconfig
        UpdateType: Mutable
        Type: MqttTopicConfig

    .PARAMETER TimestreamConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-datadestinationconfig.html#cfn-iotfleetwise-campaign-datadestinationconfig-timestreamconfig
        UpdateType: Mutable
        Type: TimestreamConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTFleetWise.Campaign.DataDestinationConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3Config,
        [parameter(Mandatory = $false)]
        $MqttTopicConfig,
        [parameter(Mandatory = $false)]
        $TimestreamConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTFleetWise.Campaign.DataDestinationConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
