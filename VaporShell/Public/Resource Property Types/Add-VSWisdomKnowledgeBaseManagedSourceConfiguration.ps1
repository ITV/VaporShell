function Add-VSWisdomKnowledgeBaseManagedSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::KnowledgeBase.ManagedSourceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::KnowledgeBase.ManagedSourceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-managedsourceconfiguration.html

    .PARAMETER WebCrawlerConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-managedsourceconfiguration.html#cfn-wisdom-knowledgebase-managedsourceconfiguration-webcrawlerconfiguration
        UpdateType: Immutable
        Type: WebCrawlerConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.KnowledgeBase.ManagedSourceConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $WebCrawlerConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.KnowledgeBase.ManagedSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
