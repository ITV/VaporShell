function Add-VSBedrockDataAutomationProjectImageStandardOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.ImageStandardOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.ImageStandardOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardoutputconfiguration.html

    .PARAMETER GenerativeField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-imagestandardoutputconfiguration-generativefield
        UpdateType: Mutable
        Type: ImageStandardGenerativeField

    .PARAMETER Extraction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-imagestandardoutputconfiguration-extraction
        UpdateType: Mutable
        Type: ImageStandardExtraction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.ImageStandardOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.ImageStandardOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
