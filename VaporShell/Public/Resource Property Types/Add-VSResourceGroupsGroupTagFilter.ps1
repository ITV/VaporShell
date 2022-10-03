function Add-VSResourceGroupsGroupTagFilter {
    <#
    .SYNOPSIS
        Adds an AWS::ResourceGroups::Group.TagFilter resource property to the template. Specifies a single tag key and optional values that you can use to specify membership in a tag-based group. An AWS resource that doesn't have a matching tag key and value is rejected as a member of the group.

    .DESCRIPTION
        Adds an AWS::ResourceGroups::Group.TagFilter resource property to the template.
Specifies a single tag key and optional values that you can use to specify membership in a tag-based group. An AWS resource that doesn't have a matching tag key and value is rejected as a member of the group.

A TagFilter object includes two properties: Key (a string and Values (a list of strings. Only resources in the account that are tagged with a matching key-value pair are members of the group. The Values property of TagFilter is optional, but specifying it narrows the query results.

As an example, suppose the TagFilters string is {"Key": "Stage", "Values": "Test", "Beta"]}, {"Key": "Storage"}]. In this case, only resources with all of the following tags are members of the group:

+ Stage tag key with a value of either Test or Beta

+ Storage tag key with any value

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html

    .PARAMETER Key
        A string that defines a tag key. Only resources in the account that are tagged with a specified tag key are members of the tag-based resource group.
This field is required when the ResourceQuery structure's Type property is TAG_FILTERS_1_0. You must specify at least one tag key.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-key
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Values
        A list of tag values that can be included in the tag-based resource group. This is optional. If you don't specify a value or values for a key, then an AWS resource with any value for that key is a member.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ResourceGroups.Group.TagFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Key,
        [parameter(Mandatory = $false)]
        $Values
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResourceGroups.Group.TagFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
