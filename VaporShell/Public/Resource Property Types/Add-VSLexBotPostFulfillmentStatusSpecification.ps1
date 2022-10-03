function Add-VSLexBotPostFulfillmentStatusSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.PostFulfillmentStatusSpecification resource property to the template. Provides a setting that determines whether the post-fulfillment response is sent to the user. For more information, see  Post-fulfillment response : https://docs.aws.amazon.com/lex/latest/dg/streaming-progress.html#progress-complete in the *Amazon Lex developer guide*.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.PostFulfillmentStatusSpecification resource property to the template.
Provides a setting that determines whether the post-fulfillment response is sent to the user. For more information, see  Post-fulfillment response : https://docs.aws.amazon.com/lex/latest/dg/streaming-progress.html#progress-complete in the *Amazon Lex developer guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postfulfillmentstatusspecification.html

    .PARAMETER SuccessResponse
        Specifies a list of message groups that Amazon Lex uses to respond when the fulfillment is successful.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postfulfillmentstatusspecification.html#cfn-lex-bot-postfulfillmentstatusspecification-successresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER FailureResponse
        Specifies a list of message groups that Amazon Lex uses to respond when fulfillment isn't successful.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postfulfillmentstatusspecification.html#cfn-lex-bot-postfulfillmentstatusspecification-failureresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .PARAMETER TimeoutResponse
        Specifies a list of message groups that Amazon Lex uses to respond when fulfillment isn't completed within the timeout period.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-postfulfillmentstatusspecification.html#cfn-lex-bot-postfulfillmentstatusspecification-timeoutresponse
        UpdateType: Mutable
        Type: ResponseSpecification

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.Bot.PostFulfillmentStatusSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SuccessResponse,
        [parameter(Mandatory = $false)]
        $FailureResponse,
        [parameter(Mandatory = $false)]
        $TimeoutResponse
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.PostFulfillmentStatusSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
