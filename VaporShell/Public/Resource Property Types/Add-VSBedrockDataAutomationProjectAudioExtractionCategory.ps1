function Add-VSBedrockDataAutomationProjectAudioExtractionCategory {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::DataAutomationProject.AudioExtractionCategory resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::DataAutomationProject.AudioExtractionCategory resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html

    .PARAMETER Types
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html#cfn-bedrock-dataautomationproject-audioextractioncategory-types
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER State
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html#cfn-bedrock-dataautomationproject-audioextractioncategory-state
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TypeConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-audioextractioncategory.html#cfn-bedrock-dataautomationproject-audioextractioncategory-typeconfiguration
        UpdateType: Mutable
        Type: AudioExtractionCategoryTypeConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.DataAutomationProject.AudioExtractionCategory')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Types,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $State,

        [Parameter(Mandatory = $false)]
        $TypeConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.DataAutomationProject.AudioExtractionCategory'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
