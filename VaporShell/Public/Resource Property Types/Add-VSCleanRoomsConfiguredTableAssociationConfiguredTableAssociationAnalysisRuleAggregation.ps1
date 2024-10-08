function Add-VSCleanRoomsConfiguredTableAssociationConfiguredTableAssociationAnalysisRuleAggregation {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregation resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation.html

    .PARAMETER AllowedResultReceivers
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation-allowedresultreceivers
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER AllowedAdditionalAnalyses
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation-allowedadditionalanalyses
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregation')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AllowedResultReceivers,

        [Parameter(Mandatory = $false)]
        $AllowedAdditionalAnalyses

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
