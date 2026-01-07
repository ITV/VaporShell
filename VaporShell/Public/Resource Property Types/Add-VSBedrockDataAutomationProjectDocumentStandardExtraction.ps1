function Add-VSBedrockDataAutomationProjectDocumentStandardExtraction {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.DocumentStandardExtraction resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.DocumentStandardExtraction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardextraction.html

    .PARAMETER BoundingBox
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardextraction.html#cfn-bedrock-dataautomationproject-documentstandardextraction-boundingbox
        UpdateType: Mutable
        Type: DocumentBoundingBox

    .PARAMETER Granularity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardextraction.html#cfn-bedrock-dataautomationproject-documentstandardextraction-granularity
        UpdateType: Mutable
        Type: DocumentExtractionGranularity

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentStandardExtraction')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $BoundingBox,

        [Parameter(Mandatory = $true)]
        $Granularity

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentStandardExtraction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
