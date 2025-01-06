function Add-VSWisdomMessageTemplateMessageTemplateAttributes {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::MessageTemplate.MessageTemplateAttributes resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::MessageTemplate.MessageTemplateAttributes resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html

    .PARAMETER SystemAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-systemattributes
        UpdateType: Mutable
        Type: SystemAttributes

    .PARAMETER CustomAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-customattributes
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER AgentAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-agentattributes
        UpdateType: Mutable
        Type: AgentAttributes

    .PARAMETER CustomerProfileAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattributes.html#cfn-wisdom-messagetemplate-messagetemplateattributes-customerprofileattributes
        UpdateType: Mutable
        Type: CustomerProfileAttributes

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.MessageTemplate.MessageTemplateAttributes')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SystemAttributes,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $CustomAttributes,

        [Parameter(Mandatory = $false)]
        $AgentAttributes,

        [Parameter(Mandatory = $false)]
        $CustomerProfileAttributes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.MessageTemplate.MessageTemplateAttributes'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
