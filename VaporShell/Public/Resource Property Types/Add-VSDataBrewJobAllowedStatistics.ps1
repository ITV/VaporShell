function Add-VSDataBrewJobAllowedStatistics {
    <#
    .SYNOPSIS
        Adds an AWS::DataBrew::Job.AllowedStatistics resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataBrew::Job.AllowedStatistics resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-allowedstatistics.html

    .PARAMETER Statistics
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-allowedstatistics.html#cfn-databrew-job-allowedstatistics-statistics
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataBrew.Job.AllowedStatistics')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Statistics

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataBrew.Job.AllowedStatistics'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
