function Add-VSStepFunctionsStateMachineDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::StepFunctions::StateMachine.Definition resource property to the template. The state machine definition is an object, where the format of the object matches the format of your AWS Step Functions template file, for example, JSON or YAML. State machine definitions adhere to the Amazon States Language: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html. For example definition templates, see the Definition format support: https://docs.aws.amazon.com/step-functions/latest/dg/development-options.html#development-options-format section of the *Development options* page in the Step Functions developer guide.

    .DESCRIPTION
        Adds an AWS::StepFunctions::StateMachine.Definition resource property to the template.
The state machine definition is an object, where the format of the object matches the format of your AWS Step Functions template file, for example, JSON or YAML. State machine definitions adhere to the Amazon States Language: https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html. For example definition templates, see the Definition format support: https://docs.aws.amazon.com/step-functions/latest/dg/development-options.html#development-options-format section of the *Development options* page in the Step Functions developer guide.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-definition.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.StepFunctions.StateMachine.Definition')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.StepFunctions.StateMachine.Definition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
