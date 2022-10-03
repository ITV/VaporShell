function Add-VSIoTEventsDetectorModelDynamoDBv2 {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.DynamoDBv2 resource property to the template. Defines an action to write to the Amazon DynamoDB table that you created. The default action payload contains all the information about the detector model instance and the event that triggered the action. You can customize the payload: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html. A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.DynamoDBv2 resource property to the template.
Defines an action to write to the Amazon DynamoDB table that you created. The default action payload contains all the information about the detector model instance and the event that triggered the action. You can customize the payload: https://docs.aws.amazon.com/iotevents/latest/apireference/API_Payload.html. A separate column of the DynamoDB table receives one attribute-value pair in the payload that you specify.

You must use expressions for all parameters in DynamoDBv2Action. The expressions accept literals, operators, functions, references, and substitution templates.

**Examples**

+ For literal values, the expressions must contain single quotes. For example, the value for the tableName parameter can be 'GreenhouseTemperatureTable'.

+ For references, you must specify either variables or input values. For example, the value for the tableName parameter can be $variable.ddbtableName.

+ For a substitution template, you must use ${}, and the template must be in single quotes. A substitution template can also contain a combination of literals, operators, functions, references, and substitution templates.

In the following example, the value for the contentExpression parameter in Payload uses a substitution template.

'{"sensorID": "${$input.GreenhouseInput.sensor_id}", "temperature": "${$input.GreenhouseInput.temperature * 9 / 5 + 32}"}'

+ For a string concatenation, you must use +. A string concatenation can also contain a combination of literals, operators, functions, references, and substitution templates.

In the following example, the value for the tableName parameter uses a string concatenation.

'GreenhouseTemperatureTable ' + $input.GreenhouseInput.date

For more information, see Expressions: https://docs.aws.amazon.com/iotevents/latest/developerguide/iotevents-expressions.html in the * AWS IoT Events Developer Guide*.

The value for the type parameter in Payload must be JSON.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodbv2.html

    .PARAMETER Payload
        Information needed to configure the payload.
By default, AWS IoT Events generates a standard payload in JSON for any action. This action payload contains all attribute-value pairs that have the information about the detector model instance and the event triggered the action. To configure the action payload, you can use contentExpression.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodbv2.html#cfn-iotevents-detectormodel-dynamodbv2-payload
        UpdateType: Mutable
        Type: Payload

    .PARAMETER TableName
        The name of the DynamoDB table.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodbv2.html#cfn-iotevents-detectormodel-dynamodbv2-tablename
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.DynamoDBv2')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Payload,
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
        $TableName
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.DynamoDBv2'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
