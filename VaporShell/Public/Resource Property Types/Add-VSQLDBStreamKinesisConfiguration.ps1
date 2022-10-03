function Add-VSQLDBStreamKinesisConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QLDB::Stream.KinesisConfiguration resource property to the template. The configuration settings of the Amazon Kinesis Data Streams destination for an Amazon QLDB journal stream.

    .DESCRIPTION
        Adds an AWS::QLDB::Stream.KinesisConfiguration resource property to the template.
The configuration settings of the Amazon Kinesis Data Streams destination for an Amazon QLDB journal stream.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html

    .PARAMETER StreamArn
        The Amazon Resource Name ARN of the Kinesis Data Streams resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html#cfn-qldb-stream-kinesisconfiguration-streamarn
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER AggregationEnabled
        Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the number of records sent per API call.
*This option is enabled by default.* Record aggregation has important implications for processing records and requires de-aggregation in your stream consumer. To learn more, see KPL Key Concepts: https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html and Consumer De-aggregation: https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-consumer-deaggregation.html in the *Amazon Kinesis Data Streams Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html#cfn-qldb-stream-kinesisconfiguration-aggregationenabled
        UpdateType: Immutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QLDB.Stream.KinesisConfiguration')]
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
        $StreamArn,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AggregationEnabled
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QLDB.Stream.KinesisConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
