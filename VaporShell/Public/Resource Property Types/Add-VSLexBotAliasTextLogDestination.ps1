function Add-VSLexBotAliasTextLogDestination {
    <#
    .SYNOPSIS
        Adds an AWS::Lex::BotAlias.TextLogDestination resource property to the template. Defines the Amazon CloudWatch Logs destination log group for conversation text logs.

    .DESCRIPTION
        Adds an AWS::Lex::BotAlias.TextLogDestination resource property to the template.
Defines the Amazon CloudWatch Logs destination log group for conversation text logs.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-textlogdestination.html

    .PARAMETER CloudWatch
        Defines the Amazon CloudWatch Logs log group where text and metadata logs are delivered.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-textlogdestination.html#cfn-lex-botalias-textlogdestination-cloudwatch
        UpdateType: Mutable
        Type: CloudWatchLogGroupLogDestination

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lex.BotAlias.TextLogDestination')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CloudWatch
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lex.BotAlias.TextLogDestination'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
