function Add-VSSageMakerClusterOrchestrator {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::Cluster.Orchestrator resource property to the template. 

    .DESCRIPTION
        Adds an AWS::SageMaker::Cluster.Orchestrator resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-orchestrator.html

    .PARAMETER Eks
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-orchestrator.html#cfn-sagemaker-cluster-orchestrator-eks
        UpdateType: Immutable
        Type: ClusterOrchestratorEksConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.Cluster.Orchestrator')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Eks
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.Cluster.Orchestrator'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
