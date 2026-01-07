function Add-VSApplicationSignalsGroupingConfigurationGroupingAttributeDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationSignals::GroupingConfiguration.GroupingAttributeDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApplicationSignals::GroupingConfiguration.GroupingAttributeDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html

    .PARAMETER GroupingName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinition-groupingname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER GroupingSourceKeys
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinition-groupingsourcekeys
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER DefaultGroupingValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinition-defaultgroupingvalue
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApplicationSignals.GroupingConfiguration.GroupingAttributeDefinition')]
    [CmdletBinding()]

    Param
    (
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
        $GroupingName,

        [Parameter(Mandatory = $true)]
        $GroupingSourceKeys,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DefaultGroupingValue

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationSignals.GroupingConfiguration.GroupingAttributeDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
