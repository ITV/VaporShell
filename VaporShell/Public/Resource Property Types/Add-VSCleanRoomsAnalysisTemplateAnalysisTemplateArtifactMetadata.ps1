function Add-VSCleanRoomsAnalysisTemplateAnalysisTemplateArtifactMetadata {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifactMetadata resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifactMetadata resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifactmetadata.html

    .PARAMETER EntryPointHash
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifactmetadata.html#cfn-cleanrooms-analysistemplate-analysistemplateartifactmetadata-entrypointhash
        UpdateType: Mutable
        Type: Hash

    .PARAMETER AdditionalArtifactHashes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifactmetadata.html#cfn-cleanrooms-analysistemplate-analysistemplateartifactmetadata-additionalartifacthashes
        UpdateType: Mutable
        Type: List
        ItemType: Hash
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactMetadata')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $EntryPointHash,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CleanRooms.AnalysisTemplate.Hash"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AdditionalArtifactHashes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifactMetadata'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
