function Add-VSPipesPipePipeTargetParameters {
    <#
    .SYNOPSIS
        Adds an AWS::Pipes::Pipe.PipeTargetParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::Pipes::Pipe.PipeTargetParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html

    .PARAMETER StepFunctionStateMachineParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-stepfunctionstatemachineparameters
        UpdateType: Mutable
        Type: PipeTargetStateMachineParameters

    .PARAMETER HttpParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-httpparameters
        UpdateType: Mutable
        Type: PipeTargetHttpParameters

    .PARAMETER TimestreamParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-timestreamparameters
        UpdateType: Mutable
        Type: PipeTargetTimestreamParameters

    .PARAMETER InputTemplate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-inputtemplate
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER EventBridgeEventBusParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-eventbridgeeventbusparameters
        UpdateType: Mutable
        Type: PipeTargetEventBridgeEventBusParameters

    .PARAMETER LambdaFunctionParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-lambdafunctionparameters
        UpdateType: Mutable
        Type: PipeTargetLambdaFunctionParameters

    .PARAMETER BatchJobParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-batchjobparameters
        UpdateType: Mutable
        Type: PipeTargetBatchJobParameters

    .PARAMETER RedshiftDataParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-redshiftdataparameters
        UpdateType: Mutable
        Type: PipeTargetRedshiftDataParameters

    .PARAMETER SqsQueueParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-sqsqueueparameters
        UpdateType: Mutable
        Type: PipeTargetSqsQueueParameters

    .PARAMETER CloudWatchLogsParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-cloudwatchlogsparameters
        UpdateType: Mutable
        Type: PipeTargetCloudWatchLogsParameters

    .PARAMETER KinesisStreamParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-kinesisstreamparameters
        UpdateType: Mutable
        Type: PipeTargetKinesisStreamParameters

    .PARAMETER SageMakerPipelineParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-sagemakerpipelineparameters
        UpdateType: Mutable
        Type: PipeTargetSageMakerPipelineParameters

    .PARAMETER EcsTaskParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetparameters.html#cfn-pipes-pipe-pipetargetparameters-ecstaskparameters
        UpdateType: Mutable
        Type: PipeTargetEcsTaskParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Pipes.Pipe.PipeTargetParameters')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $StepFunctionStateMachineParameters,

        [Parameter(Mandatory = $false)]
        $HttpParameters,

        [Parameter(Mandatory = $false)]
        $TimestreamParameters,

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
        $InputTemplate,

        [Parameter(Mandatory = $false)]
        $EventBridgeEventBusParameters,

        [Parameter(Mandatory = $false)]
        $LambdaFunctionParameters,

        [Parameter(Mandatory = $false)]
        $BatchJobParameters,

        [Parameter(Mandatory = $false)]
        $RedshiftDataParameters,

        [Parameter(Mandatory = $false)]
        $SqsQueueParameters,

        [Parameter(Mandatory = $false)]
        $CloudWatchLogsParameters,

        [Parameter(Mandatory = $false)]
        $KinesisStreamParameters,

        [Parameter(Mandatory = $false)]
        $SageMakerPipelineParameters,

        [Parameter(Mandatory = $false)]
        $EcsTaskParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pipes.Pipe.PipeTargetParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
