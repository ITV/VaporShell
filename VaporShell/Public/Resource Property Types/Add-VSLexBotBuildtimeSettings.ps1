function Add-VSLexBotBuildtimeSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.BuildtimeSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.BuildtimeSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-buildtimesettings.html

    .PARAMETER DescriptiveBotBuilderSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-buildtimesettings.html#cfn-lex-bot-buildtimesettings-descriptivebotbuilderspecification
        UpdateType: Mutable
        Type: DescriptiveBotBuilderSpecification

    .PARAMETER SampleUtteranceGenerationSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-buildtimesettings.html#cfn-lex-bot-buildtimesettings-sampleutterancegenerationspecification
        UpdateType: Mutable
        Type: SampleUtteranceGenerationSpecification

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.BuildtimeSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $DescriptiveBotBuilderSpecification,

        [Parameter(Mandatory = $false)]
        $SampleUtteranceGenerationSpecification

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.BuildtimeSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
