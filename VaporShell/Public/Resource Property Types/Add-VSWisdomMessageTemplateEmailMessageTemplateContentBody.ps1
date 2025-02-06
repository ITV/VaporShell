function Add-VSWisdomMessageTemplateEmailMessageTemplateContentBody {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::MessageTemplate.EmailMessageTemplateContentBody resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::MessageTemplate.EmailMessageTemplateContentBody resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontentbody.html

    .PARAMETER PlainText
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontentbody.html#cfn-wisdom-messagetemplate-emailmessagetemplatecontentbody-plaintext
        UpdateType: Mutable
        Type: MessageTemplateBodyContentProvider

    .PARAMETER Html
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontentbody.html#cfn-wisdom-messagetemplate-emailmessagetemplatecontentbody-html
        UpdateType: Mutable
        Type: MessageTemplateBodyContentProvider

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.MessageTemplate.EmailMessageTemplateContentBody')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $PlainText,

        [Parameter(Mandatory = $false)]
        $Html

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.MessageTemplate.EmailMessageTemplateContentBody'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
