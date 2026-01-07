function Add-VSBedrockDataAutomationProjectVideoStandardExtraction {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.VideoStandardExtraction resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.VideoStandardExtraction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardextraction.html

    .PARAMETER Category
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardextraction.html#cfn-bedrock-dataautomationproject-videostandardextraction-category
        UpdateType: Mutable
        Type: VideoExtractionCategory

    .PARAMETER BoundingBox
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-videostandardextraction.html#cfn-bedrock-dataautomationproject-videostandardextraction-boundingbox
        UpdateType: Mutable
        Type: VideoBoundingBox

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.VideoStandardExtraction')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Category,

        [Parameter(Mandatory = $true)]
        $BoundingBox

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.VideoStandardExtraction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
