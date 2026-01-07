function Add-VSBedrockDataAutomationProjectDocumentOverrideConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.DocumentOverrideConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.DocumentOverrideConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html

    .PARAMETER SensitiveDataConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html#cfn-bedrock-dataautomationproject-documentoverrideconfiguration-sensitivedataconfiguration
        UpdateType: Mutable
        Type: SensitiveDataConfiguration

    .PARAMETER Splitter
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html#cfn-bedrock-dataautomationproject-documentoverrideconfiguration-splitter
        UpdateType: Mutable
        Type: SplitterConfiguration

    .PARAMETER ModalityProcessing
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoverrideconfiguration.html#cfn-bedrock-dataautomationproject-documentoverrideconfiguration-modalityprocessing
        UpdateType: Mutable
        Type: ModalityProcessingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentOverrideConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SensitiveDataConfiguration,

        [Parameter(Mandatory = $false)]
        $Splitter,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.DocumentOverrideConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
