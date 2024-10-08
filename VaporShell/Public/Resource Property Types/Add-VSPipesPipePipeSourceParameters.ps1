function Add-VSPipesPipePipeSourceParameters {
    <#
    .SYNOPSIS
        Adds an AWS::Pipes::Pipe.PipeSourceParameters resource property to the template.

    .DESCRIPTION
        Adds an AWS::Pipes::Pipe.PipeSourceParameters resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html

    .PARAMETER ManagedStreamingKafkaParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-managedstreamingkafkaparameters
        UpdateType: Mutable
        Type: PipeSourceManagedStreamingKafkaParameters

    .PARAMETER DynamoDBStreamParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-dynamodbstreamparameters
        UpdateType: Mutable
        Type: PipeSourceDynamoDBStreamParameters

    .PARAMETER SelfManagedKafkaParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-selfmanagedkafkaparameters
        UpdateType: Mutable
        Type: PipeSourceSelfManagedKafkaParameters

    .PARAMETER RabbitMQBrokerParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-rabbitmqbrokerparameters
        UpdateType: Mutable
        Type: PipeSourceRabbitMQBrokerParameters

    .PARAMETER SqsQueueParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-sqsqueueparameters
        UpdateType: Mutable
        Type: PipeSourceSqsQueueParameters

    .PARAMETER KinesisStreamParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-kinesisstreamparameters
        UpdateType: Mutable
        Type: PipeSourceKinesisStreamParameters

    .PARAMETER FilterCriteria
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-filtercriteria
        UpdateType: Mutable
        Type: FilterCriteria

    .PARAMETER ActiveMQBrokerParameters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipesourceparameters.html#cfn-pipes-pipe-pipesourceparameters-activemqbrokerparameters
        UpdateType: Mutable
        Type: PipeSourceActiveMQBrokerParameters

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Pipes.Pipe.PipeSourceParameters')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ManagedStreamingKafkaParameters,

        [Parameter(Mandatory = $false)]
        $DynamoDBStreamParameters,

        [Parameter(Mandatory = $false)]
        $SelfManagedKafkaParameters,

        [Parameter(Mandatory = $false)]
        $RabbitMQBrokerParameters,

        [Parameter(Mandatory = $false)]
        $SqsQueueParameters,

        [Parameter(Mandatory = $false)]
        $KinesisStreamParameters,

        [Parameter(Mandatory = $false)]
        $FilterCriteria,

        [Parameter(Mandatory = $false)]
        $ActiveMQBrokerParameters

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Pipes.Pipe.PipeSourceParameters'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
