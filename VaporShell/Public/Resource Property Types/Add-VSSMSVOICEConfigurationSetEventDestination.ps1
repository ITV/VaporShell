function Add-VSSMSVOICEConfigurationSetEventDestination {
    <#
    .SYNOPSIS
        Adds an AWS::SMSVOICE::ConfigurationSet.EventDestination resource property to the template.

    .DESCRIPTION
        Adds an AWS::SMSVOICE::ConfigurationSet.EventDestination resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html

    .PARAMETER EventDestinationName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-eventdestinationname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SnsDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-snsdestination
        UpdateType: Mutable
        Type: SnsDestination

    .PARAMETER Enabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER MatchingEventTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-matchingeventtypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER CloudWatchLogsDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-cloudwatchlogsdestination
        UpdateType: Mutable
        Type: CloudWatchLogsDestination

    .PARAMETER KinesisFirehoseDestination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-smsvoice-configurationset-eventdestination.html#cfn-smsvoice-configurationset-eventdestination-kinesisfirehosedestination
        UpdateType: Mutable
        Type: KinesisFirehoseDestination

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SMSVOICE.ConfigurationSet.EventDestination')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EventDestinationName,

        [Parameter(Mandatory = $false)]
        $SnsDestination,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled,

        [Parameter(Mandatory = $true)]
        $MatchingEventTypes,

        [Parameter(Mandatory = $false)]
        $CloudWatchLogsDestination,

        [Parameter(Mandatory = $false)]
        $KinesisFirehoseDestination

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SMSVOICE.ConfigurationSet.EventDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
