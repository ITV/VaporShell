function Add-VSResourceGroupsGroupQuery {
    <#
    .SYNOPSIS
        Adds an AWS::ResourceGroups::Group.Query resource property to the template. Specifies details within a ResourceQuery structure that determines the membership of the resource group. The contents required in the Query structure are determined by the Type property of the containing ResourceQuery structure.

    .DESCRIPTION
        Adds an AWS::ResourceGroups::Group.Query resource property to the template.
Specifies details within a ResourceQuery structure that determines the membership of the resource group. The contents required in the Query structure are determined by the Type property of the containing ResourceQuery structure.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html

    .PARAMETER ResourceTypeFilters
        Specifies limits to the types of resources that can be included in the resource group. For example, if ResourceTypeFilters is "AWS::EC2::Instance", "AWS::DynamoDB::Table"], only EC2 instances or DynamoDB tables can be members of this resource group. The default value is "AWS::AllSupported"].

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-resourcetypefilters
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER StackIdentifier
        Specifies the ARN of a CloudFormation stack. All supported resources of the CloudFormation stack are members of the resource group. If you don't specify an ARN, this parameter defaults to the current stack that you are defining, which means that all the resources of the current stack are grouped.
You can specify a value for StackIdentifier only when the ResourceQuery.Type property is CLOUDFORMATION_STACK_1_0.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-stackidentifier
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TagFilters
        A list of key-value pair objects that limit which resources can be members of the resource group. This property is required when the ResourceQuery.Type property is TAG_FILTERS_1_0.
A resource must have a tag that matches every filter that is provided in the TagFilters list.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-tagfilters
        UpdateType: Mutable
        Type: List
        ItemType: TagFilter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ResourceGroups.Group.Query')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ResourceTypeFilters,
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
        $StackIdentifier,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ResourceGroups.Group.TagFilter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TagFilters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResourceGroups.Group.Query'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
