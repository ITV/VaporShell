function Add-VSBedrockDataAutomationProjectDocumentOutputFormat {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.DocumentOutputFormat resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.DocumentOutputFormat resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputformat.html

    .PARAMETER TextFormat
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputformat.html#cfn-bedrock-dataautomationproject-documentoutputformat-textformat
        UpdateType: Mutable
        Type: DocumentOutputTextFormat

    .PARAMETER AdditionalFileFormat
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputformat.html#cfn-bedrock-dataautomationproject-documentoutputformat-additionalfileformat
        UpdateType: Mutable
        Type: DocumentOutputAdditionalFileFormat

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentOutputFormat')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $TextFormat,

        [Parameter(Mandatory = $true)]
        $AdditionalFileFormat

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentOutputFormat'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
