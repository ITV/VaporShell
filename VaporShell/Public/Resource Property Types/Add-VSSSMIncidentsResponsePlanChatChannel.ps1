function Add-VSSSMIncidentsResponsePlanChatChannel {
    <#
    .SYNOPSIS
        Adds an AWS::SSMIncidents::ResponsePlan.ChatChannel resource property to the template. The AWS Chatbot chat channel used for collaboration during an incident.

    .DESCRIPTION
        Adds an AWS::SSMIncidents::ResponsePlan.ChatChannel resource property to the template.
The AWS Chatbot chat channel used for collaboration during an incident.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-chatchannel.html

    .PARAMETER ChatbotSns
        The SNS targets that AWS Chatbot uses to notify the chat channel of updates to an incident. You can also make updates to the incident through the chat channel by using the SNS topics

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmincidents-responseplan-chatchannel.html#cfn-ssmincidents-responseplan-chatchannel-chatbotsns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSMIncidents.ResponsePlan.ChatChannel')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ChatbotSns
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMIncidents.ResponsePlan.ChatChannel'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
