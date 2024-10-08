function Add-VSCleanRoomsConfiguredTableConfiguredTableAnalysisRulePolicy {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::ConfiguredTable.ConfiguredTableAnalysisRulePolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::ConfiguredTable.ConfiguredTableAnalysisRulePolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-configuredtableanalysisrulepolicy.html

    .PARAMETER V1
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-configuredtableanalysisrulepolicy.html#cfn-cleanrooms-configuredtable-configuredtableanalysisrulepolicy-v1
        UpdateType: Mutable
        Type: ConfiguredTableAnalysisRulePolicyV1

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicy')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $V1

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
