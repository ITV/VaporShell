function Add-VSBedrockFlowRerankingMetadataSelectiveModeConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Flow.RerankingMetadataSelectiveModeConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Flow.RerankingMetadataSelectiveModeConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-rerankingmetadataselectivemodeconfiguration.html

    .PARAMETER FieldsToInclude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-rerankingmetadataselectivemodeconfiguration.html#cfn-bedrock-flow-rerankingmetadataselectivemodeconfiguration-fieldstoinclude
        UpdateType: Mutable
        Type: List
        ItemType: FieldForReranking
        DuplicatesAllowed: True

    .PARAMETER FieldsToExclude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-rerankingmetadataselectivemodeconfiguration.html#cfn-bedrock-flow-rerankingmetadataselectivemodeconfiguration-fieldstoexclude
        UpdateType: Mutable
        Type: List
        ItemType: FieldForReranking
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Flow.RerankingMetadataSelectiveModeConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.Flow.FieldForReranking"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FieldsToInclude,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Bedrock.Flow.FieldForReranking"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FieldsToExclude

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Flow.RerankingMetadataSelectiveModeConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
