function Add-VSResourceGroupsGroupConfigurationItem {
    <#
    .SYNOPSIS
        Adds an AWS::ResourceGroups::Group.ConfigurationItem resource property to the template. One of the items in the service configuration assigned to a resource group. A service configuration can consist of one or more items. For details service configurations and how to construct them, see Service configurations for resource groups: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html in the *AWS Resource Groups User Guide*.

    .DESCRIPTION
        Adds an AWS::ResourceGroups::Group.ConfigurationItem resource property to the template.
One of the items in the service configuration assigned to a resource group. A service configuration can consist of one or more items. For details service configurations and how to construct them, see Service configurations for resource groups: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html in the *AWS Resource Groups User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationitem.html

    .PARAMETER Type
        Specifies the type of configuration item. Each item must have a unique value for type. For the list of the types that you can specify for a configuration item, see Supported resource types and parameters: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types in the *AWS Resource Groups User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationitem.html#cfn-resourcegroups-group-configurationitem-type
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Parameters
        A collection of parameters for this configuration item. For the list of parameters that you can use with each configuration item Type, see Supported resource types and parameters: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types in the *AWS Resource Groups User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationitem.html#cfn-resourcegroups-group-configurationitem-parameters
        UpdateType: Mutable
        Type: List
        ItemType: ConfigurationParameter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ResourceGroups.Group.ConfigurationItem')]
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
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ResourceGroups.Group.ConfigurationParameter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Parameters
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResourceGroups.Group.ConfigurationItem'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
