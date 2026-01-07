function Add-VSLexBotRuntimeSettings {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::Bot.RuntimeSettings resource property to the template.

    .DESCRIPTION
        Adds an AWS::Lex::Bot.RuntimeSettings resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-runtimesettings.html

    .PARAMETER SlotResolutionImprovementSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-runtimesettings.html#cfn-lex-bot-runtimesettings-slotresolutionimprovementspecification
        UpdateType: Mutable
        Type: SlotResolutionImprovementSpecification

    .PARAMETER NluImprovementSpecification
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-runtimesettings.html#cfn-lex-bot-runtimesettings-nluimprovementspecification
        UpdateType: Mutable
        Type: NluImprovementSpecification

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Lex.Bot.RuntimeSettings')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SlotResolutionImprovementSpecification,

        [Parameter(Mandatory = $false)]
        $NluImprovementSpecification

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.Bot.RuntimeSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
