function Add-VSAppTestTestCaseResourceAction {
    <#
    .SYNOPSIS
        Adds an AWS::AppTest::TestCase.ResourceAction resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppTest::TestCase.ResourceAction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html

    .PARAMETER CloudFormationAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html#cfn-apptest-testcase-resourceaction-cloudformationaction
        UpdateType: Mutable
        Type: CloudFormationAction

    .PARAMETER M2ManagedApplicationAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html#cfn-apptest-testcase-resourceaction-m2managedapplicationaction
        UpdateType: Mutable
        Type: M2ManagedApplicationAction

    .PARAMETER M2NonManagedApplicationAction
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-resourceaction.html#cfn-apptest-testcase-resourceaction-m2nonmanagedapplicationaction
        UpdateType: Mutable
        Type: M2NonManagedApplicationAction

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppTest.TestCase.ResourceAction')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $CloudFormationAction,

        [Parameter(Mandatory = $false)]
        $M2ManagedApplicationAction,

        [Parameter(Mandatory = $false)]
        $M2NonManagedApplicationAction

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppTest.TestCase.ResourceAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
