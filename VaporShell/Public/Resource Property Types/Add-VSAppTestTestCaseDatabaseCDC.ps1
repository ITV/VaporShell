function Add-VSAppTestTestCaseDatabaseCDC {
    <#
    .SYNOPSIS
        Adds an AWS::AppTest::TestCase.DatabaseCDC resource property to the template. 

    .DESCRIPTION
        Adds an AWS::AppTest::TestCase.DatabaseCDC resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-databasecdc.html

    .PARAMETER SourceMetadata
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-databasecdc.html#cfn-apptest-testcase-databasecdc-sourcemetadata
        UpdateType: Mutable
        Type: SourceDatabaseMetadata

    .PARAMETER TargetMetadata
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-databasecdc.html#cfn-apptest-testcase-databasecdc-targetmetadata
        UpdateType: Mutable
        Type: TargetDatabaseMetadata

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.AppTest.TestCase.DatabaseCDC')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SourceMetadata,
        [parameter(Mandatory = $true)]
        $TargetMetadata
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppTest.TestCase.DatabaseCDC'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
