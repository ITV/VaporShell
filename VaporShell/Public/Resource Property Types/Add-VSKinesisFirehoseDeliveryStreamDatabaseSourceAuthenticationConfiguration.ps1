function Add-VSKinesisFirehoseDeliveryStreamDatabaseSourceAuthenticationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.DatabaseSourceAuthenticationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::KinesisFirehose::DeliveryStream.DatabaseSourceAuthenticationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasesourceauthenticationconfiguration.html

    .PARAMETER SecretsManagerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-databasesourceauthenticationconfiguration.html#cfn-kinesisfirehose-deliverystream-databasesourceauthenticationconfiguration-secretsmanagerconfiguration
        UpdateType: Immutable
        Type: SecretsManagerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.DatabaseSourceAuthenticationConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $SecretsManagerConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.DatabaseSourceAuthenticationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
