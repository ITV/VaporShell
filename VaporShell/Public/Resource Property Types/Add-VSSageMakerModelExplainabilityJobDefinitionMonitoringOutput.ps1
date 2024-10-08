function Add-VSSageMakerModelExplainabilityJobDefinitionMonitoringOutput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelExplainabilityJobDefinition.MonitoringOutput resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelExplainabilityJobDefinition.MonitoringOutput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelexplainabilityjobdefinition-monitoringoutput.html

    .PARAMETER S3Output
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
        [Parameter(Mandatory = $true)]
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
