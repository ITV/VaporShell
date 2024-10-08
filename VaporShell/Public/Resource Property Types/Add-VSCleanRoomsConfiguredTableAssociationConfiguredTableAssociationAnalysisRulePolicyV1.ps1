function Add-VSCleanRoomsConfiguredTableAssociationConfiguredTableAssociationAnalysisRulePolicyV1 {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1 resource property to the template. 

    .DESCRIPTION
        Adds an AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1 resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html

    .PARAMETER Aggregation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1-aggregation
        UpdateType: Mutable
        Type: ConfiguredTableAssociationAnalysisRuleAggregation

    .PARAMETER List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1-list
        UpdateType: Mutable
        Type: ConfiguredTableAssociationAnalysisRuleList

    .PARAMETER Custom
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1-custom
        UpdateType: Mutable
        Type: ConfiguredTableAssociationAnalysisRuleCustom

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Aggregation,
        [parameter(Mandatory = $false)]
        $List,
        [parameter(Mandatory = $false)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
