function Add-VSBedrockDataAutomationProjectVideoStandardOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.VideoStandardOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.VideoStandardOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardoutputconfiguration.html

    .PARAMETER GenerativeField
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-videostandardoutputconfiguration-generativefield
        UpdateType: Mutable
        Type: VideoStandardGenerativeField

    .PARAMETER Extraction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardoutputconfiguration.html#cfn-bedrock-dataautomationproject-videostandardoutputconfiguration-extraction
        UpdateType: Mutable
        Type: VideoStandardExtraction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.VideoStandardOutputConfiguration')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.VideoStandardOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
