function Add-VSEventsRuleTarget {
    <#
    .SYNOPSIS
        Adds an AWS::Events::Rule.Target resource property to the template. Targets are the resources to be invoked when a rule is triggered. For a complete list of services and resources that can be set as a target, see PutTargets: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutTargets.html.

    .DESCRIPTION
        Adds an AWS::Events::Rule.Target resource property to the template.
Targets are the resources to be invoked when a rule is triggered. For a complete list of services and resources that can be set as a target, see PutTargets: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutTargets.html.

If you are setting the event bus of another account as the target, and that account granted permission to your account through an organization instead of directly by the account ID, then you must specify a RoleArn with proper permissions in the Target structure. For more information, see Sending and Receiving Events Between AWS Accounts: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html in the *Amazon EventBridge User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html

    .PARAMETER Arn
        The Amazon Resource Name ARN of the target.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-arn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER BatchParameters
        If the event target is an AWS Batch job, this contains the job definition, job name, and other parameters. For more information, see Jobs: https://docs.aws.amazon.com/batch/latest/userguide/jobs.html in the * AWS Batch User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-batchparameters
        Type: BatchParameters
        UpdateType: Mutable

    .PARAMETER DeadLetterConfig
        The DeadLetterConfig that defines the target queue to send dead-letter queue events to.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-deadletterconfig
        Type: DeadLetterConfig
        UpdateType: Mutable

    .PARAMETER EcsParameters
        Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see Task Definitions : https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html in the *Amazon EC2 Container Service Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-ecsparameters
        Type: EcsParameters
        UpdateType: Mutable

    .PARAMETER HttpParameters
        Contains the HTTP parameters to use when the target is a API Gateway REST endpoint or EventBridge ApiDestination.
If you specify an API Gateway REST API or EventBridge ApiDestination as a target, you can use this parameter to specify headers, path parameters, and query string keys/values as part of your target invoking request. If you're using ApiDestinations, the corresponding Connection can also have these values configured. In case of any conflicting keys, values from the Connection take precedence.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-httpparameters
        Type: HttpParameters
        UpdateType: Mutable

    .PARAMETER Id
        The ID of the target within the specified rule. Use this ID to reference the target when updating the rule. We recommend using a memorable and unique string.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-id
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Input
        Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. For more information, see The JavaScript Object Notation JSON Data Interchange Format: http://www.rfc-editor.org/rfc/rfc7159.txt.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-input
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER InputPath
        The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. You must use JSON dot notation, not bracket notation. For more information about JSON paths, see JSONPath: http://goessner.net/articles/JsonPath/.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputpath
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER InputTransformer
        Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputtransformer
        Type: InputTransformer
        UpdateType: Mutable

    .PARAMETER KinesisParameters
        The custom parameter you can use to control the shard assignment, when the target is a Kinesis data stream. If you do not include this parameter, the default is to use the eventId as the partition key.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-kinesisparameters
        Type: KinesisParameters
        UpdateType: Mutable

    .PARAMETER RedshiftDataParameters
        Contains the Amazon Redshift Data API parameters to use when the target is a Amazon Redshift cluster.
If you specify a Amazon Redshift Cluster as a Target, you can use this to specify parameters to invoke the Amazon Redshift Data API ExecuteStatement based on EventBridge events.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-redshiftdataparameters
        Type: RedshiftDataParameters
        UpdateType: Mutable

    .PARAMETER RetryPolicy
        The RetryPolicy object that contains the retry policy configuration to use for the dead-letter queue.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-retrypolicy
        Type: RetryPolicy
        UpdateType: Mutable

    .PARAMETER RoleArn
        The Amazon Resource Name ARN of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-rolearn
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER RunCommandParameters
        Parameters used when you are using the rule to invoke Amazon EC2 Run Command.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-runcommandparameters
        Type: RunCommandParameters
        UpdateType: Mutable

    .PARAMETER SageMakerPipelineParameters
        Contains the SageMaker Model Building Pipeline parameters to start execution of a SageMaker Model Building Pipeline.
If you specify a SageMaker Model Building Pipeline as a target, you can use this to specify parameters to start a pipeline execution based on EventBridge events.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sagemakerpipelineparameters
        Type: SageMakerPipelineParameters
        UpdateType: Mutable

    .PARAMETER SqsParameters
        Contains the message group ID to use when the target is a FIFO queue.
If you specify an SQS FIFO queue as a target, the queue must have content-based deduplication enabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sqsparameters
        Type: SqsParameters
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Events.Rule.Target')]
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
        $Arn,
        [parameter(Mandatory = $false)]
        $BatchParameters,
        [parameter(Mandatory = $false)]
        $DeadLetterConfig,
        [parameter(Mandatory = $false)]
        $EcsParameters,
        [parameter(Mandatory = $false)]
        $HttpParameters,
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
        $Id,
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
        $Input,
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
        $InputPath,
        [parameter(Mandatory = $false)]
        $InputTransformer,
        [parameter(Mandatory = $false)]
        $KinesisParameters,
        [parameter(Mandatory = $false)]
        $RedshiftDataParameters,
        [parameter(Mandatory = $false)]
        $RetryPolicy,
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
        $RoleArn,
        [parameter(Mandatory = $false)]
        $RunCommandParameters,
        [parameter(Mandatory = $false)]
        $SageMakerPipelineParameters,
        [parameter(Mandatory = $false)]
        $SqsParameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Events.Rule.Target'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
