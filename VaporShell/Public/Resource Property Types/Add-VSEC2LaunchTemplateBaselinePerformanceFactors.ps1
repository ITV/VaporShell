function Add-VSEC2LaunchTemplateBaselinePerformanceFactors {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::LaunchTemplate.BaselinePerformanceFactors resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::LaunchTemplate.BaselinePerformanceFactors resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-baselineperformancefactors.html

    .PARAMETER Cpu
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-baselineperformancefactors.html#cfn-ec2-launchtemplate-baselineperformancefactors-cpu
        UpdateType: Mutable
        Type: Cpu

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.LaunchTemplate.BaselinePerformanceFactors')]
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.LaunchTemplate.BaselinePerformanceFactors'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
