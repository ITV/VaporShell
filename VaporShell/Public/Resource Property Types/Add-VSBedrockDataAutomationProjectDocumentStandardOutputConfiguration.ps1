function Add-VSBedrockDataAutomationProjectDocumentStandardOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.DocumentStandardOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.DocumentStandardOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html

    .PARAMETER OutputFormat
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-documentstandardoutputconfiguration-outputformat
        UpdateType: Mutable
        Type: DocumentOutputFormat

    .PARAMETER GenerativeField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-documentstandardoutputconfiguration-generativefield
        UpdateType: Mutable
        Type: DocumentStandardGenerativeField

    .PARAMETER Extraction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-documentstandardoutputconfiguration-extraction
        UpdateType: Mutable
        Type: DocumentStandardExtraction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentStandardOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $OutputFormat,

        [Parameter(Mandatory = $false)]
        $GenerativeField,

        [Parameter(Mandatory = $false)]
        $Extraction

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentStandardOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
