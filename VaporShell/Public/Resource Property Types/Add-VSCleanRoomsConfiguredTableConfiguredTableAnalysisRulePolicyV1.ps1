function Add-VSCleanRoomsConfiguredTableConfiguredTableAnalysisRulePolicyV1 {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1 resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1 resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1.html

    .PARAMETER Aggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1-aggregation
        UpdateType: Mutable
        Type: AnalysisRuleAggregation

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1-list
        UpdateType: Mutable
        Type: AnalysisRuleList

    .PARAMETER Custom
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtable-configuredtableanalysisrulepolicyv1-custom
        UpdateType: Mutable
        Type: AnalysisRuleCustom

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Aggregation,

        [Parameter(Mandatory = $false)]
        $List,

        [Parameter(Mandatory = $false)]
        $Custom

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.ConfiguredTable.ConfiguredTableAnalysisRulePolicyV1'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
