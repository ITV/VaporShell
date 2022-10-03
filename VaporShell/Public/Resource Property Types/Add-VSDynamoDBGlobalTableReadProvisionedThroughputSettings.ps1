function Add-VSDynamoDBGlobalTableReadProvisionedThroughputSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.ReadProvisionedThroughputSettings resource property to the template. Allows you to specify the read capacity settings for a replica table or a replica global secondary index when the BillingMode is set to PROVISIONED. You must specify a value for either ReadCapacityUnits or ReadCapacityAutoScalingSettings, but not both. You can switch between fixed capacity and auto scaling.

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.ReadProvisionedThroughputSettings resource property to the template.
Allows you to specify the read capacity settings for a replica table or a replica global secondary index when the BillingMode is set to PROVISIONED. You must specify a value for either ReadCapacityUnits or ReadCapacityAutoScalingSettings, but not both. You can switch between fixed capacity and auto scaling.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readprovisionedthroughputsettings.html

    .PARAMETER ReadCapacityUnits
        Specifies a fixed read capacity for the replica table or global secondary index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readprovisionedthroughputsettings.html#cfn-dynamodb-globaltable-readprovisionedthroughputsettings-readcapacityunits
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER ReadCapacityAutoScalingSettings
        Specifies auto scaling settings for the replica table or global secondary index.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readprovisionedthroughputsettings.html#cfn-dynamodb-globaltable-readprovisionedthroughputsettings-readcapacityautoscalingsettings
        UpdateType: Mutable
        Type: CapacityAutoScalingSettings

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.ReadProvisionedThroughputSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ReadCapacityUnits,
        [parameter(Mandatory = $false)]
        $ReadCapacityAutoScalingSettings
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.ReadProvisionedThroughputSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
