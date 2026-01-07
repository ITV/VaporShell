function Add-VSBedrockDataAutomationProjectOverrideConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.OverrideConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.OverrideConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html

    .PARAMETER Video
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-video
        UpdateType: Mutable
        Type: VideoOverrideConfiguration

    .PARAMETER ModalityRouting
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-modalityrouting
        UpdateType: Mutable
        Type: ModalityRoutingConfiguration

    .PARAMETER Document
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-document
        UpdateType: Mutable
        Type: DocumentOverrideConfiguration

    .PARAMETER Audio
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-audio
        UpdateType: Mutable
        Type: AudioOverrideConfiguration

    .PARAMETER Image
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-overrideconfiguration.html#cfn-bedrock-dataautomationproject-overrideconfiguration-image
        UpdateType: Mutable
        Type: ImageOverrideConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.OverrideConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Video,

        [Parameter(Mandatory = $false)]
        $ModalityRouting,

        [Parameter(Mandatory = $false)]
        $Document,

        [Parameter(Mandatory = $false)]
        $Audio,

        [Parameter(Mandatory = $false)]
        $Image

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.OverrideConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
