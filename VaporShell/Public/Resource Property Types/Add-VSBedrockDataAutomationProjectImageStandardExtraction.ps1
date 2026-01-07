function Add-VSBedrockDataAutomationProjectImageStandardExtraction {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.ImageStandardExtraction resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.ImageStandardExtraction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardextraction.html

    .PARAMETER Category
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardextraction.html#cfn-bedrock-dataautomationproject-imagestandardextraction-category
        UpdateType: Mutable
        Type: ImageExtractionCategory

    .PARAMETER BoundingBox
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-imagestandardextraction.html#cfn-bedrock-dataautomationproject-imagestandardextraction-boundingbox
        UpdateType: Mutable
        Type: ImageBoundingBox

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.ImageStandardExtraction')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.ImageStandardExtraction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
