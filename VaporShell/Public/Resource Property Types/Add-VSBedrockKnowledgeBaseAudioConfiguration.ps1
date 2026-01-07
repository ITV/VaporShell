function Add-VSBedrockKnowledgeBaseAudioConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::KnowledgeBase.AudioConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::KnowledgeBase.AudioConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-audioconfiguration.html

    .PARAMETER SegmentationConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-audioconfiguration.html#cfn-bedrock-knowledgebase-audioconfiguration-segmentationconfiguration
        UpdateType: Immutable
        Type: AudioSegmentationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.KnowledgeBase.AudioConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $SegmentationConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.KnowledgeBase.AudioConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
