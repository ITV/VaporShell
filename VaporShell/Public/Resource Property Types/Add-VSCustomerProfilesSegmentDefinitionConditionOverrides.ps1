function Add-VSCustomerProfilesSegmentDefinitionConditionOverrides {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::SegmentDefinition.ConditionOverrides resource property to the template.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::SegmentDefinition.ConditionOverrides resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-conditionoverrides.html

    .PARAMETER Range
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-segmentdefinition-conditionoverrides.html#cfn-customerprofiles-segmentdefinition-conditionoverrides-range
        UpdateType: Immutable
        Type: RangeOverride

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CustomerProfiles.SegmentDefinition.ConditionOverrides')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Range

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.SegmentDefinition.ConditionOverrides'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
