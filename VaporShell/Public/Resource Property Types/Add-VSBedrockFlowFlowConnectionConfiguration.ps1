function Add-VSBedrockFlowFlowConnectionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.FlowConnectionConfiguration resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.FlowConnectionConfiguration resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowconnectionconfiguration.html

    .PARAMETER Data
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowconnectionconfiguration.html#cfn-bedrock-flow-flowconnectionconfiguration-data
        UpdateType: Mutable
        Type: FlowDataConnectionConfiguration

    .PARAMETER Conditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-flowconnectionconfiguration.html#cfn-bedrock-flow-flowconnectionconfiguration-conditional
        UpdateType: Mutable
        Type: FlowConditionalConnectionConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Bedrock.Flow.FlowConnectionConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Data,
        [parameter(Mandatory = $false)]
        $Conditional
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.FlowConnectionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
