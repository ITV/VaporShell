function Add-VSDynamoDBGlobalTableWriteProvisionedThroughputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.WriteProvisionedThroughputSettings resource property to the template. Specifies an auto scaling policy for write capacity. This policy will be applied to all replicas. This setting must be specified if BillingMode is set to PROVISIONED.

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.WriteProvisionedThroughputSettings resource property to the template.
Specifies an auto scaling policy for write capacity. This policy will be applied to all replicas. This setting must be specified if BillingMode is set to PROVISIONED.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-writeprovisionedthroughputsettings.html

    .PARAMETER WriteCapacityAutoScalingSettings
        Specifies auto scaling settings for the replica table or global secondary index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-writeprovisionedthroughputsettings.html#cfn-dynamodb-globaltable-writeprovisionedthroughputsettings-writecapacityautoscalingsettings
        UpdateType: Mutable
        Type: CapacityAutoScalingSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.WriteProvisionedThroughputSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $WriteCapacityAutoScalingSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.WriteProvisionedThroughputSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
