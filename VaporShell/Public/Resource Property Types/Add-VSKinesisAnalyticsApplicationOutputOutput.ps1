function Add-VSKinesisAnalyticsApplicationOutputOutput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisAnalytics::ApplicationOutput.Output resource property to the template.

    .DESCRIPTION
        Adds an AWS::KinesisAnalytics::ApplicationOutput.Output resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html

    .PARAMETER DestinationSchema
        Type: DestinationSchema
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-destinationschema
        UpdateType: Mutable

    .PARAMETER LambdaOutput
        Type: LambdaOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-lambdaoutput
        UpdateType: Mutable

    .PARAMETER KinesisFirehoseOutput
        Type: KinesisFirehoseOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisfirehoseoutput
        UpdateType: Mutable

    .PARAMETER KinesisStreamsOutput
        Type: KinesisStreamsOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisstreamsoutput
        UpdateType: Mutable

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-name
        PrimitiveType: String
        UpdateType: Immutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.Output')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $DestinationSchema,

        [Parameter(Mandatory = $false)]
        $LambdaOutput,

        [Parameter(Mandatory = $false)]
        $KinesisFirehoseOutput,

        [Parameter(Mandatory = $false)]
        $KinesisStreamsOutput,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisAnalytics.ApplicationOutput.Output'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
