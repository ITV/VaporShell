function Add-VSCleanRoomsAnalysisTemplateAnalysisSourceMetadata {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisSourceMetadata resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisSourceMetadata resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissourcemetadata.html

    .PARAMETER Artifacts
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysissourcemetadata.html#cfn-cleanrooms-analysistemplate-analysissourcemetadata-artifacts
        UpdateType: Mutable
        Type: AnalysisTemplateArtifactMetadata

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisSourceMetadata')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Artifacts

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisSourceMetadata'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
