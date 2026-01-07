function Add-VSOmicsWorkflowVersionDefinitionRepository {
    <#
    .SYNOPSIS
        Adds an AWS::Omics::WorkflowVersion.DefinitionRepository resource property to the template.

    .DESCRIPTION
        Adds an AWS::Omics::WorkflowVersion.DefinitionRepository resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html

    .PARAMETER sourceReference
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-sourcereference
        UpdateType: Immutable
        Type: SourceReference

    .PARAMETER fullRepositoryId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-fullrepositoryid
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER excludeFilePatterns
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-excludefilepatterns
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER connectionArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-connectionarn
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Omics.WorkflowVersion.DefinitionRepository')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $sourceReference,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $fullRepositoryId,

        [Parameter(Mandatory = $false)]
        $excludeFilePatterns,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $connectionArn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Omics.WorkflowVersion.DefinitionRepository'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
