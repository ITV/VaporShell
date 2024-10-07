function Add-VSLexBotInitialResponseSetting {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.InitialResponseSetting resource property to the template. 

    .DESCRIPTION
        Adds an AWS::Lex::Bot.InitialResponseSetting resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-initialresponsesetting.html

    .PARAMETER CodeHook
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-initialresponsesetting.html#cfn-lex-bot-initialresponsesetting-codehook
        UpdateType: Mutable
        Type: DialogCodeHookInvocationSetting

    .PARAMETER InitialResponse
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-initialresponsesetting.html#cfn-lex-bot-initialresponsesetting-initialresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER Conditional
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-initialresponsesetting.html#cfn-lex-bot-initialresponsesetting-conditional
        UpdateType: Mutable
        Type: ConditionalSpecification

    .PARAMETER NextStep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-initialresponsesetting.html#cfn-lex-bot-initialresponsesetting-nextstep
        UpdateType: Mutable
        Type: DialogState

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.InitialResponseSetting')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CodeHook,
        [parameter(Mandatory = $false)]
        $InitialResponse,
        [parameter(Mandatory = $false)]
        $Conditional,
        [parameter(Mandatory = $false)]
        $NextStep
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.InitialResponseSetting'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
