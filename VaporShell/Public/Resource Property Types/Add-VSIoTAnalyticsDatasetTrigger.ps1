function Add-VSIoTAnalyticsDatasetTrigger {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.Trigger resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.Trigger resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html

    .PARAMETER Schedule
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-schedule
        UpdateType: Mutable
        Type: Schedule

    .PARAMETER TriggeringDataset
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-triggeringdataset
        UpdateType: Mutable
        Type: TriggeringDataset

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTAnalytics.Dataset.Trigger')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Schedule,

        [Parameter(Mandatory = $false)]
        $TriggeringDataset

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Dataset.Trigger'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
