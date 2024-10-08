function Add-VSAppTestTestCaseMainframeAction {
    <#
    .SYNOPSIS
        Adds an AWS::AppTest::TestCase.MainframeAction resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppTest::TestCase.MainframeAction resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeaction.html

    .PARAMETER ActionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeaction.html#cfn-apptest-testcase-mainframeaction-actiontype
        UpdateType: Mutable
        Type: MainframeActionType

    .PARAMETER Resource
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeaction.html#cfn-apptest-testcase-mainframeaction-resource
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER Properties
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-mainframeaction.html#cfn-apptest-testcase-mainframeaction-properties
        UpdateType: Mutable
        Type: MainframeActionProperties

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppTest.TestCase.MainframeAction')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $ActionType,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Resource,

        [Parameter(Mandatory = $false)]
        $Properties

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppTest.TestCase.MainframeAction'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
