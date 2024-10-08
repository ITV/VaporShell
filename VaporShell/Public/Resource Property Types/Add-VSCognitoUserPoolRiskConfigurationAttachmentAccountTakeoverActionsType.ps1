function Add-VSCognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType {
    <#
    .SYNOPSIS
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html

    .PARAMETER HighAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-highaction
        UpdateType: Mutable
        Type: AccountTakeoverActionType

    .PARAMETER LowAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-lowaction
        UpdateType: Mutable
        Type: AccountTakeoverActionType

    .PARAMETER MediumAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-mediumaction
        UpdateType: Mutable
        Type: AccountTakeoverActionType

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $HighAction,

        [Parameter(Mandatory = $false)]
        $LowAction,

        [Parameter(Mandatory = $false)]
        $MediumAction

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
