function Add-VSBedrockDataAutomationProjectVideoOverrideConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.VideoOverrideConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.VideoOverrideConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videooverrideconfiguration.html

    .PARAMETER SensitiveDataConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videooverrideconfiguration.html#cfn-bedrock-dataautomationproject-videooverrideconfiguration-sensitivedataconfiguration
        UpdateType: Mutable
        Type: SensitiveDataConfiguration

    .PARAMETER ModalityProcessing
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videooverrideconfiguration.html#cfn-bedrock-dataautomationproject-videooverrideconfiguration-modalityprocessing
        UpdateType: Mutable
        Type: ModalityProcessingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.VideoOverrideConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SensitiveDataConfiguration,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.VideoOverrideConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
