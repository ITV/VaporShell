function Add-VSBedrockDataAutomationProjectImageOverrideConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.ImageOverrideConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.ImageOverrideConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageoverrideconfiguration.html

    .PARAMETER SensitiveDataConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageoverrideconfiguration.html#cfn-bedrock-dataautomationproject-imageoverrideconfiguration-sensitivedataconfiguration
        UpdateType: Mutable
        Type: SensitiveDataConfiguration

    .PARAMETER ModalityProcessing
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imageoverrideconfiguration.html#cfn-bedrock-dataautomationproject-imageoverrideconfiguration-modalityprocessing
        UpdateType: Mutable
        Type: ModalityProcessingConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.ImageOverrideConfiguration')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.ImageOverrideConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
