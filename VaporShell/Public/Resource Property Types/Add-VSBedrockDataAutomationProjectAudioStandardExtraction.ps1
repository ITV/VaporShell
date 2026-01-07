function Add-VSBedrockDataAutomationProjectAudioStandardExtraction {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.AudioStandardExtraction resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.AudioStandardExtraction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardextraction.html

    .PARAMETER Category
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audiostandardextraction.html#cfn-bedrock-dataautomationproject-audiostandardextraction-category
        UpdateType: Mutable
        Type: AudioExtractionCategory

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.AudioStandardExtraction')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Category

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.AudioStandardExtraction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
