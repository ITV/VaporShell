function Add-VSBedrockDataAutomationProjectStandardOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.StandardOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.StandardOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html

    .PARAMETER Video
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-video
        UpdateType: Mutable
        Type: VideoStandardOutputConfiguration

    .PARAMETER Document
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-document
        UpdateType: Mutable
        Type: DocumentStandardOutputConfiguration

    .PARAMETER Image
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-image
        UpdateType: Mutable
        Type: ImageStandardOutputConfiguration

    .PARAMETER Audio
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-standardoutputconfiguration.html#cfn-bedrock-dataautomationproject-standardoutputconfiguration-audio
        UpdateType: Mutable
        Type: AudioStandardOutputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.StandardOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Video,

        [Parameter(Mandatory = $false)]
        $Document,

        [Parameter(Mandatory = $false)]
        $Image,

        [Parameter(Mandatory = $false)]
        $Audio

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.StandardOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
