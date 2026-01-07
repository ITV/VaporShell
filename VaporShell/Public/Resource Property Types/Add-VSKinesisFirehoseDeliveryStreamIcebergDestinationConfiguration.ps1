function Add-VSKinesisFirehoseDeliveryStreamIcebergDestinationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.IcebergDestinationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.IcebergDestinationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html

    .PARAMETER CatalogConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-catalogconfiguration
        UpdateType: Immutable
        Type: CatalogConfiguration

    .PARAMETER S3Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-s3configuration
        UpdateType: Mutable
        Type: S3DestinationConfiguration

    .PARAMETER DestinationTableConfigurationList
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-destinationtableconfigurationlist
        UpdateType: Mutable
        Type: List
        ItemType: DestinationTableConfiguration
        DuplicatesAllowed: True

    .PARAMETER BufferingHints
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-bufferinghints
        UpdateType: Mutable
        Type: BufferingHints

    .PARAMETER TableCreationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-tablecreationconfiguration
        UpdateType: Mutable
        Type: TableCreationConfiguration

    .PARAMETER RetryOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-retryoptions
        UpdateType: Mutable
        Type: RetryOptions

    .PARAMETER s3BackupMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-s3backupmode
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ProcessingConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-processingconfiguration
        UpdateType: Mutable
        Type: ProcessingConfiguration

    .PARAMETER SchemaEvolutionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-schemaevolutionconfiguration
        UpdateType: Mutable
        Type: SchemaEvolutionConfiguration

    .PARAMETER AppendOnly
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-appendonly
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER CloudWatchLoggingOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-cloudwatchloggingoptions
        UpdateType: Mutable
        Type: CloudWatchLoggingOptions

    .PARAMETER RoleARN
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-icebergdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.IcebergDestinationConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $CatalogConfiguration,

        [Parameter(Mandatory = $true)]
        $S3Configuration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.KinesisFirehose.DeliveryStream.DestinationTableConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DestinationTableConfigurationList,

        [Parameter(Mandatory = $false)]
        $BufferingHints,

        [Parameter(Mandatory = $false)]
        $TableCreationConfiguration,

        [Parameter(Mandatory = $false)]
        $RetryOptions,

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
        $s3BackupMode,

        [Parameter(Mandatory = $false)]
        $ProcessingConfiguration,

        [Parameter(Mandatory = $false)]
        $SchemaEvolutionConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AppendOnly,

        [Parameter(Mandatory = $false)]
        $CloudWatchLoggingOptions,

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
        $RoleARN

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.IcebergDestinationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
