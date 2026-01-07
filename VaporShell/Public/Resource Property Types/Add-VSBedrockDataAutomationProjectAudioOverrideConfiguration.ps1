function Add-VSBedrockDataAutomationProjectAudioOverrideConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.AudioOverrideConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.AudioOverrideConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiooverrideconfiguration.html

    .PARAMETER SensitiveDataConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiooverrideconfiguration.html#cfn-bedrock-dataautomationproject-audiooverrideconfiguration-sensitivedataconfiguration
        UpdateType: Mutable
        Type: SensitiveDataConfiguration

    .PARAMETER LanguageConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiooverrideconfiguration.html#cfn-bedrock-dataautomationproject-audiooverrideconfiguration-languageconfiguration
        UpdateType: Mutable
        Type: AudioLanguageConfiguration

    .PARAMETER ModalityProcessing
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiooverrideconfiguration.html#cfn-bedrock-dataautomationproject-audiooverrideconfiguration-modalityprocessing
        UpdateType: Mutable
        Type: ModalityProcessingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.AudioOverrideConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SensitiveDataConfiguration,

        [Parameter(Mandatory = $false)]
        $LanguageConfiguration,

        [Parameter(Mandatory = $false)]
        $ModalityProcessing

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.AudioOverrideConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
