function Add-VSBatchJobDefinitionEksMetadata {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::JobDefinition.EksMetadata resource property to the template.

    .DESCRIPTION
        Adds an AWS::Batch::JobDefinition.EksMetadata resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html

    .PARAMETER Annotations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html#cfn-batch-jobdefinition-eksmetadata-annotations
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Labels
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html#cfn-batch-jobdefinition-eksmetadata-labels
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Namespace
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-eksmetadata.html#cfn-batch-jobdefinition-eksmetadata-namespace
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Batch.JobDefinition.EksMetadata')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Annotations,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Labels,

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
        $Namespace

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.JobDefinition.EksMetadata'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
