function Add-VSKinesisFirehoseDeliveryStreamDeliveryStreamEncryptionConfigurationInput {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.DeliveryStreamEncryptionConfigurationInput resource property to the template. Specifies the type and Amazon Resource Name (ARN of the CMK to use for Server-Side Encryption (SSE.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.DeliveryStreamEncryptionConfigurationInput resource property to the template.
Specifies the type and Amazon Resource Name (ARN of the CMK to use for Server-Side Encryption (SSE.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deliverystreamencryptionconfigurationinput.html

    .PARAMETER KeyARN
        If you set KeyType to CUSTOMER_MANAGED_CMK, you must specify the Amazon Resource Name ARN of the CMK. If you set KeyType to  AWS_OWNED_CMK, Kinesis Data Firehose uses a service-account CMK.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deliverystreamencryptionconfigurationinput.html#cfn-kinesisfirehose-deliverystream-deliverystreamencryptionconfigurationinput-keyarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER KeyType
        Indicates the type of customer master key CMK to use for encryption. The default setting is AWS_OWNED_CMK. For more information about CMKs, see Customer Master Keys CMKs: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys.
You can use a CMK of type CUSTOMER_MANAGED_CMK to encrypt up to 500 delivery streams.
To encrypt your delivery stream, use symmetric CMKs. Kinesis Data Firehose doesn't support asymmetric CMKs. For information about symmetric and asymmetric CMKs, see About Symmetric and Asymmetric CMKs: https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-concepts.html in the AWS Key Management Service developer guide.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deliverystreamencryptionconfigurationinput.html#cfn-kinesisfirehose-deliverystream-deliverystreamencryptionconfigurationinput-keytype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.DeliveryStreamEncryptionConfigurationInput')]
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
        $KeyARN,
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
        $KeyType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.DeliveryStreamEncryptionConfigurationInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
