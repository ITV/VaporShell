function Add-VSWisdomMessageTemplateContent {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::MessageTemplate.Content resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::MessageTemplate.Content resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-content.html

    .PARAMETER EmailMessageTemplateContent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-content.html#cfn-wisdom-messagetemplate-content-emailmessagetemplatecontent
        UpdateType: Mutable
        Type: EmailMessageTemplateContent

    .PARAMETER SmsMessageTemplateContent
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-content.html#cfn-wisdom-messagetemplate-content-smsmessagetemplatecontent
        UpdateType: Mutable
        Type: SmsMessageTemplateContent

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.MessageTemplate.Content')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EmailMessageTemplateContent,

        [Parameter(Mandatory = $false)]
        $SmsMessageTemplateContent

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.MessageTemplate.Content'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
