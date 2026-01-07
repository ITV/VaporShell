function Add-VSARCRegionSwitchPlanReportOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ARCRegionSwitch::Plan.ReportOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::ARCRegionSwitch::Plan.ReportOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-reportoutputconfiguration.html

    .PARAMETER S3Configuration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-reportoutputconfiguration.html#cfn-arcregionswitch-plan-reportoutputconfiguration-s3configuration
        UpdateType: Mutable
        Type: S3ReportOutputConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ARCRegionSwitch.Plan.ReportOutputConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $S3Configuration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ARCRegionSwitch.Plan.ReportOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
