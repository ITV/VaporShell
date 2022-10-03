function Add-VSSageMakerModelExplainabilityJobDefinitionMonitoringOutput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelExplainabilityJobDefinition.MonitoringOutput resource property to the template. The output object for a monitoring job.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelExplainabilityJobDefinition.MonitoringOutput resource property to the template.
The output object for a monitoring job.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-monitoringoutput.html

    .PARAMETER S3Output
        The Amazon S3 storage location where the results of a monitoring job are saved.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-monitoringoutput.html#cfn-sagemaker-modelexplainabilityjobdefinition-monitoringoutput-s3output
        UpdateType: Immutable
        Type: S3Output

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelExplainabilityJobDefinition.MonitoringOutput')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3Output
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelExplainabilityJobDefinition.MonitoringOutput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
