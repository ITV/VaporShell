function Add-VSBedrockFlowRetrievalFlowNodeServiceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.RetrievalFlowNodeServiceConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.RetrievalFlowNodeServiceConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-retrievalflownodeserviceconfiguration.html

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-retrievalflownodeserviceconfiguration.html#cfn-bedrock-flow-retrievalflownodeserviceconfiguration-s3
        UpdateType: Mutable
        Type: RetrievalFlowNodeS3Configuration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Bedrock.Flow.RetrievalFlowNodeServiceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.RetrievalFlowNodeServiceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
