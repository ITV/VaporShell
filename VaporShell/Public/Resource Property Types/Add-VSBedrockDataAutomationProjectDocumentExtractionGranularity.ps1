function Add-VSBedrockDataAutomationProjectDocumentExtractionGranularity {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.DocumentExtractionGranularity resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.DocumentExtractionGranularity resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentextractiongranularity.html

    .PARAMETER Types
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentextractiongranularity.html#cfn-bedrock-dataautomationproject-documentextractiongranularity-types
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentExtractionGranularity')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Types

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentExtractionGranularity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
