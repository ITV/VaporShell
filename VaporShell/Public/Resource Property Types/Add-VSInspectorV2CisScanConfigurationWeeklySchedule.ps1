function Add-VSInspectorV2CisScanConfigurationWeeklySchedule {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::CisScanConfiguration.WeeklySchedule resource property to the template. 

    .DESCRIPTION
        Adds an AWS::InspectorV2::CisScanConfiguration.WeeklySchedule resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-weeklyschedule.html

    .PARAMETER Days
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-weeklyschedule.html#cfn-inspectorv2-cisscanconfiguration-weeklyschedule-days
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER StartTime
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-weeklyschedule.html#cfn-inspectorv2-cisscanconfiguration-weeklyschedule-starttime
        UpdateType: Mutable
        Type: Time

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.InspectorV2.CisScanConfiguration.WeeklySchedule')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $Days,
        [parameter(Mandatory = $true)]
        $StartTime
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.CisScanConfiguration.WeeklySchedule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
