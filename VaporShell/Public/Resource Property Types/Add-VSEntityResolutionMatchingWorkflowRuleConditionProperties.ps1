function Add-VSEntityResolutionMatchingWorkflowRuleConditionProperties {
    <#
    .SYNOPSIS
        Adds an AWS::EntityResolution::MatchingWorkflow.RuleConditionProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::EntityResolution::MatchingWorkflow.RuleConditionProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-ruleconditionproperties.html

    .PARAMETER Rules
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-ruleconditionproperties.html#cfn-entityresolution-matchingworkflow-ruleconditionproperties-rules
        UpdateType: Mutable
        Type: List
        ItemType: RuleCondition
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EntityResolution.MatchingWorkflow.RuleConditionProperties')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.EntityResolution.MatchingWorkflow.RuleCondition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Rules

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EntityResolution.MatchingWorkflow.RuleConditionProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
