function Add-VSCleanRoomsAnalysisTemplateAnalysisTemplateArtifact {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifact resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifact resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifact.html

    .PARAMETER Location
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifact.html#cfn-cleanrooms-analysistemplate-analysistemplateartifact-location
        UpdateType: Immutable
        Type: S3Location

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifact')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Location

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifact'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
