function Add-VSIoTAnalyticsDatasetDeltaTimeSessionWindowConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoTAnalytics::Dataset.DeltaTimeSessionWindowConfiguration resource property to the template. A structure that contains the configuration information of a delta time session window.

    .DESCRIPTION
        Adds an AWS::IoTAnalytics::Dataset.DeltaTimeSessionWindowConfiguration resource property to the template.
A structure that contains the configuration information of a delta time session window.

https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html: https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_DeltaTime.html specifies a time interval. You can use DeltaTime to create dataset contents with data that has arrived in the data store since the last execution. For an example of DeltaTime, see  Creating a SQL dataset with a delta window (CLI: https://docs.aws.amazon.com/iotanalytics/latest/userguide/automate-create-dataset.html#automate-example6 in the * AWS IoT Analytics User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatimesessionwindowconfiguration.html

    .PARAMETER TimeoutInMinutes
        A time interval. You can use timeoutInMinutes so that AWS IoT Analytics can batch up late data notifications that have been generated since the last execution. AWS IoT Analytics sends one batch of notifications to Amazon CloudWatch Events at one time.
For more information about how to write a timestamp expression, see Date and Time Functions and Operators: https://prestodb.io/docs/0.172/functions/datetime.html, in the *Presto 0.172 Documentation*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatimesessionwindowconfiguration.html#cfn-iotanalytics-dataset-deltatimesessionwindowconfiguration-timeoutinminutes
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTAnalytics.Dataset.DeltaTimeSessionWindowConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TimeoutInMinutes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTAnalytics.Dataset.DeltaTimeSessionWindowConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
