function Add-VSWisdomMessageTemplateSmsMessageTemplateContent {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::MessageTemplate.SmsMessageTemplateContent resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::MessageTemplate.SmsMessageTemplateContent resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-smsmessagetemplatecontent.html

    .PARAMETER Body
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-smsmessagetemplatecontent.html#cfn-wisdom-messagetemplate-smsmessagetemplatecontent-body
        UpdateType: Mutable
        Type: SmsMessageTemplateContentBody

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.MessageTemplate.SmsMessageTemplateContent')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Body

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.MessageTemplate.SmsMessageTemplateContent'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
