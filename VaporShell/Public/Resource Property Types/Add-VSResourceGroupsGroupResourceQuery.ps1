function Add-VSResourceGroupsGroupResourceQuery {
    <#
    .SYNOPSIS
        Adds an AWS::ResourceGroups::Group.ResourceQuery resource property to the template. The query used to dynamically define the members of a group. For more information about how to construct a query, see Build queries and groups in AWS Resource Groups: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html.

    .DESCRIPTION
        Adds an AWS::ResourceGroups::Group.ResourceQuery resource property to the template.
The query used to dynamically define the members of a group. For more information about how to construct a query, see Build queries and groups in AWS Resource Groups: https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html

    .PARAMETER Type
        Specifies the type of resource query that determines this group's membership. There are two valid query types:
+ TAG_FILTERS_1_0 indicates that the group is a tag-based group. To complete the group membership, you must include the TagFilters property to specify the tag filters to use in the query.
+ CLOUDFORMATION_STACK_1_0, the default, indicates that the group is a CloudFormation stack-based group. Group membership is based on the CloudFormation stack. You must specify the StackIdentifier property in the query to define which stack to associate the group with, or leave it empty to default to the stack where the group is defined.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Query
        The query that defines the membership of the group. This is a structure with properties that depend on the Type.
The Query structure must be included in the following scenarios:
+ When the Type is TAG_FILTERS_1_0, you must specify a Query structure that contains a TagFilters list of tags. Resources with tags that match those in the TagFilter list become members of the resource group.
+ When the Type is CLOUDFORMATION_STACK_1_0 then this field is required only when you must specify a CloudFormation stack other than the one you are defining. To do this, the Query structure must contain the StackIdentifier property. If you don't specify either a Query structure or a StackIdentifier within that Query, then it defaults to the CloudFormation stack that you're currently constructing.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-query
        UpdateType: Mutable
        Type: Query

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ResourceGroups.Group.ResourceQuery')]
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
        $Type,
        [parameter(Mandatory = $false)]
        $Query
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResourceGroups.Group.ResourceQuery'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
