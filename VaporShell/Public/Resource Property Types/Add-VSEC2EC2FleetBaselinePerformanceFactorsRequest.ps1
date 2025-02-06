function Add-VSEC2EC2FleetBaselinePerformanceFactorsRequest {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::EC2Fleet.BaselinePerformanceFactorsRequest resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::EC2Fleet.BaselinePerformanceFactorsRequest resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-baselineperformancefactorsrequest.html

    .PARAMETER Cpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-baselineperformancefactorsrequest.html#cfn-ec2-ec2fleet-baselineperformancefactorsrequest-cpu
        UpdateType: Immutable
        Type: CpuPerformanceFactorRequest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.EC2Fleet.BaselinePerformanceFactorsRequest')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Cpu

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.EC2Fleet.BaselinePerformanceFactorsRequest'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
