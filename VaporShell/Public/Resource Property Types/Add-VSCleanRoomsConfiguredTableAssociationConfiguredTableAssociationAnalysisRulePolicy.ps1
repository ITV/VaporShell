function Add-VSCleanRoomsConfiguredTableAssociationConfiguredTableAssociationAnalysisRulePolicy {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicy resource property to the template. 

    .DESCRIPTION
        Adds an AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicy resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicy.html

    .PARAMETER V1
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicy.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicy-v1
        UpdateType: Mutable
        Type: ConfiguredTableAssociationAnalysisRulePolicyV1

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicy')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
