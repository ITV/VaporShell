function Add-VSSageMakerMonitoringScheduleMonitoringJobDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::MonitoringSchedule.MonitoringJobDefinition resource property to the template. Defines the monitoring job.

    .DESCRIPTION
        Adds an AWS::SageMaker::MonitoringSchedule.MonitoringJobDefinition resource property to the template.
Defines the monitoring job.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html

    .PARAMETER BaselineConfig
        Baseline configuration used to validate that the data conforms to the specified constraints and statistics

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-baselineconfig
        UpdateType: Mutable
        Type: BaselineConfig

    .PARAMETER Environment
        Sets the environment variables in the Docker container.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-environment
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER MonitoringAppSpecification
        Configures the monitoring job to run a specified Docker container image.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringappspecification
        UpdateType: Mutable
        Type: MonitoringAppSpecification

    .PARAMETER MonitoringInputs
        The array of inputs for the monitoring job. Currently we support monitoring an Amazon SageMaker Endpoint.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringinputs
        UpdateType: Mutable
        Type: List
        ItemType: MonitoringInput

    .PARAMETER MonitoringOutputConfig
        The array of outputs from the monitoring job to be uploaded to Amazon Simple Storage Service Amazon S3.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringoutputconfig
        UpdateType: Mutable
        Type: MonitoringOutputConfig

    .PARAMETER MonitoringResources
        Identifies the resources, ML compute instances, and ML storage volumes to deploy for a monitoring job. In distributed processing, you specify more than one instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-monitoringresources
        UpdateType: Mutable
        Type: MonitoringResources

    .PARAMETER NetworkConfig
        Specifies networking options for an monitoring job.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-networkconfig
        UpdateType: Mutable
        Type: NetworkConfig

    .PARAMETER RoleArn
        The Amazon Resource Name ARN of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-rolearn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER StoppingCondition
        Specifies a time limit for how long the monitoring job is allowed to run.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringjobdefinition.html#cfn-sagemaker-monitoringschedule-monitoringjobdefinition-stoppingcondition
        UpdateType: Mutable
        Type: StoppingCondition

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.MonitoringSchedule.MonitoringJobDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $BaselineConfig,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Environment,
        [parameter(Mandatory = $true)]
        $MonitoringAppSpecification,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.MonitoringSchedule.MonitoringInput"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MonitoringInputs,
        [parameter(Mandatory = $true)]
        $MonitoringOutputConfig,
        [parameter(Mandatory = $true)]
        $MonitoringResources,
        [parameter(Mandatory = $false)]
        $NetworkConfig,
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
        $RoleArn,
        [parameter(Mandatory = $false)]
        $StoppingCondition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.MonitoringSchedule.MonitoringJobDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
