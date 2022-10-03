function Add-VSResourceGroupsGroupConfigurationParameter {
    <#
    .SYNOPSIS
        Adds an AWS::ResourceGroups::Group.ConfigurationParameter resource property to the template. One parameter for a group configuration item. For details about service configurations and how to construct them, see Service configurations for resource groups: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html in the *AWS Resource Groups User Guide*.

    .DESCRIPTION
        Adds an AWS::ResourceGroups::Group.ConfigurationParameter resource property to the template.
One parameter for a group configuration item. For details about service configurations and how to construct them, see Service configurations for resource groups: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html in the *AWS Resource Groups User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationparameter.html

    .PARAMETER Name
        The name of the group configuration parameter. For the list of parameters that you can use with each configuration item type, see Supported resource types and parameters: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types in the *AWS Resource Groups User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationparameter.html#cfn-resourcegroups-group-configurationparameter-name
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Values
        The value or values to be used for the specified parameter. For the list of values you can use with each parameter, see Supported resource types and parameters: https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-configurationparameter.html#cfn-resourcegroups-group-configurationparameter-values
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ResourceGroups.Group.ConfigurationParameter')]
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
        $Name,
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ResourceGroups.Group.ConfigurationParameter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
