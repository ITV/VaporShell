function Add-VSWisdomKnowledgeBaseSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Wisdom::KnowledgeBase.SourceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Wisdom::KnowledgeBase.SourceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-sourceconfiguration.html

    .PARAMETER AppIntegrations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-sourceconfiguration.html#cfn-wisdom-knowledgebase-sourceconfiguration-appintegrations
        UpdateType: Immutable
        Type: AppIntegrationsConfiguration

    .PARAMETER ManagedSourceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-sourceconfiguration.html#cfn-wisdom-knowledgebase-sourceconfiguration-managedsourceconfiguration
        UpdateType: Immutable
        Type: ManagedSourceConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Wisdom.KnowledgeBase.SourceConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AppIntegrations,

        [Parameter(Mandatory = $false)]
        $ManagedSourceConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Wisdom.KnowledgeBase.SourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
