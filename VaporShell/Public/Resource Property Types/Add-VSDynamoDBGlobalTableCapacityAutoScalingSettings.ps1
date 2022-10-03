function Add-VSDynamoDBGlobalTableCapacityAutoScalingSettings {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.CapacityAutoScalingSettings resource property to the template. Configures a scalable target and an autoscaling policy for a table or global secondary index's read or write capacity.

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.CapacityAutoScalingSettings resource property to the template.
Configures a scalable target and an autoscaling policy for a table or global secondary index's read or write capacity.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html

    .PARAMETER MinCapacity
        The minimum provisioned capacity units for the global table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-mincapacity
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER MaxCapacity
        The maximum provisioned capacity units for the global table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-maxcapacity
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER SeedCapacity
        When switching billing mode from PAY_PER_REQUEST to PROVISIONED, DynamoDB requires you to specify read and write capacity unit values for the table and for each global secondary index. These values will be applied to all replicas. The table will use these provisioned values until CloudFormation creates the autoscaling policies you configured in your template. CloudFormation cannot determine what capacity the table and its global secondary indexes will require in this time period, since they are application-dependent.
If you want to switch a table's billing mode from PAY_PER_REQUEST to PROVISIONED, you must specify a value for this property for each autoscaled resource. If you specify different values for the same resource in different regions, CloudFormation will use the highest value found in either the SeedCapacity or ReadCapacityUnits properties. For example, if your global secondary index myGSI has a SeedCapacity of 10 in us-east-1 and a fixed ReadCapacityUnits of 20 in eu-west-1, CloudFormation will initially set the read capacity for myGSI to 20. Note that if you disable ScaleIn for myGSI in us-east-1, its read capacity units might not be set back to 10.
You must also specify a value for SeedCapacity when you plan to switch a table's billing mode from PROVISIONED to PAY_PER_REQUEST, because CloudFormation might need to roll back the operation reverting the billing mode to PROVISIONED and this cannot succeed without specifying a value for SeedCapacity.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-seedcapacity
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER TargetTrackingScalingPolicyConfiguration
        Defines a target tracking scaling policy.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-targettrackingscalingpolicyconfiguration
        UpdateType: Mutable
        Type: TargetTrackingScalingPolicyConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.CapacityAutoScalingSettings')]
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
        $MinCapacity,
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
        $MaxCapacity,
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
        $SeedCapacity,
        [parameter(Mandatory = $true)]
        $TargetTrackingScalingPolicyConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.CapacityAutoScalingSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
