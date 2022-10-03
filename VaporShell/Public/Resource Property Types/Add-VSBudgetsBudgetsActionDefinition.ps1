function Add-VSBudgetsBudgetsActionDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::Budgets::BudgetsAction.Definition resource property to the template. The definition is where you specify all of the type-specific parameters.

    .DESCRIPTION
        Adds an AWS::Budgets::BudgetsAction.Definition resource property to the template.
The definition is where you specify all of the type-specific parameters.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html

    .PARAMETER IamActionDefinition
        The AWS Identity and Access Management IAM action definition details.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html#cfn-budgets-budgetsaction-definition-iamactiondefinition
        UpdateType: Mutable
        Type: IamActionDefinition

    .PARAMETER ScpActionDefinition
        The service control policies SCP action definition details.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html#cfn-budgets-budgetsaction-definition-scpactiondefinition
        UpdateType: Mutable
        Type: ScpActionDefinition

    .PARAMETER SsmActionDefinition
        The Amazon EC2 Systems Manager SSM action definition details.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-definition.html#cfn-budgets-budgetsaction-definition-ssmactiondefinition
        UpdateType: Mutable
        Type: SsmActionDefinition

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Budgets.BudgetsAction.Definition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $IamActionDefinition,
        [parameter(Mandatory = $false)]
        $ScpActionDefinition,
        [parameter(Mandatory = $false)]
        $SsmActionDefinition
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Budgets.BudgetsAction.Definition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
