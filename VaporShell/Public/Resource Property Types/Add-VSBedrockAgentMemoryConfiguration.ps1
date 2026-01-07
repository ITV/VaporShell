function Add-VSBedrockAgentMemoryConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Bedrock::Agent.MemoryConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Bedrock::Agent.MemoryConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html

    .PARAMETER SessionSummaryConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html#cfn-bedrock-agent-memoryconfiguration-sessionsummaryconfiguration
        UpdateType: Mutable
        Type: SessionSummaryConfiguration

    .PARAMETER EnabledMemoryTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html#cfn-bedrock-agent-memoryconfiguration-enabledmemorytypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER StorageDays
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-memoryconfiguration.html#cfn-bedrock-agent-memoryconfiguration-storagedays
        UpdateType: Mutable
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Bedrock.Agent.MemoryConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $SessionSummaryConfiguration,

        [Parameter(Mandatory = $false)]
        $EnabledMemoryTypes,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StorageDays

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Bedrock.Agent.MemoryConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
