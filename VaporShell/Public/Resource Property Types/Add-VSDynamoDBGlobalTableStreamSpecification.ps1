function Add-VSDynamoDBGlobalTableStreamSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::DynamoDB::GlobalTable.StreamSpecification resource property to the template. Represents the DynamoDB Streams configuration for a table in DynamoDB.

    .DESCRIPTION
        Adds an AWS::DynamoDB::GlobalTable.StreamSpecification resource property to the template.
Represents the DynamoDB Streams configuration for a table in DynamoDB.

You can only modify this value if your AWS::DynamoDB::GlobalTable contains only one entry in Replicas. You must specify a value for this property if your AWS::DynamoDB::GlobalTable contains more than one replica.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-streamspecification.html

    .PARAMETER StreamViewType
        When an item in the table is modified, StreamViewType determines what information is written to the stream for this table. Valid values for StreamViewType are:
+  KEYS_ONLY - Only the key attributes of the modified item are written to the stream.
+  NEW_IMAGE - The entire item, as it appears after it was modified, is written to the stream.
+  OLD_IMAGE - The entire item, as it appeared before it was modified, is written to the stream.
+  NEW_AND_OLD_IMAGES - Both the new and the old item images of the item are written to the stream.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-streamspecification.html#cfn-dynamodb-globaltable-streamspecification-streamviewtype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DynamoDB.GlobalTable.StreamSpecification')]
    [cmdletbinding()]
    Param
    (
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
        $StreamViewType
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DynamoDB.GlobalTable.StreamSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
