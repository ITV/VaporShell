function Add-VSCleanRoomsAnalysisTemplateAnalysisTemplateArtifacts {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifacts resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::AnalysisTemplate.AnalysisTemplateArtifacts resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html

    .PARAMETER AdditionalArtifacts
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html#cfn-cleanrooms-analysistemplate-analysistemplateartifacts-additionalartifacts
        UpdateType: Immutable
        Type: List
        ItemType: AnalysisTemplateArtifact
        DuplicatesAllowed: True

    .PARAMETER EntryPoint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html#cfn-cleanrooms-analysistemplate-analysistemplateartifacts-entrypoint
        UpdateType: Immutable
        Type: AnalysisTemplateArtifact

    .PARAMETER RoleArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-analysistemplate-analysistemplateartifacts.html#cfn-cleanrooms-analysistemplate-analysistemplateartifacts-rolearn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifacts')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifact"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AdditionalArtifacts,

        [Parameter(Mandatory = $true)]
        $EntryPoint,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RoleArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.AnalysisTemplate.AnalysisTemplateArtifacts'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
