function Add-VSAppTestTestCaseStepAction {
    <#
    .SYNOPSIS
        Adds an AWS::AppTest::TestCase.StepAction resource property to the template. 

    .DESCRIPTION
        Adds an AWS::AppTest::TestCase.StepAction resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-stepaction.html

    .PARAMETER CompareAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-stepaction.html#cfn-apptest-testcase-stepaction-compareaction
        UpdateType: Mutable
        Type: CompareAction

    .PARAMETER MainframeAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-stepaction.html#cfn-apptest-testcase-stepaction-mainframeaction
        UpdateType: Mutable
        Type: MainframeAction

    .PARAMETER ResourceAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-stepaction.html#cfn-apptest-testcase-stepaction-resourceaction
        UpdateType: Mutable
        Type: ResourceAction

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppTest.TestCase.StepAction')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CompareAction,
        [parameter(Mandatory = $false)]
        $MainframeAction,
        [parameter(Mandatory = $false)]
        $ResourceAction
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppTest.TestCase.StepAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
