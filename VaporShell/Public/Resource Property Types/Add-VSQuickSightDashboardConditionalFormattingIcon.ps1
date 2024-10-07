function Add-VSQuickSightDashboardConditionalFormattingIcon {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.ConditionalFormattingIcon resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.ConditionalFormattingIcon resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-conditionalformattingicon.html

    .PARAMETER CustomCondition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-conditionalformattingicon.html#cfn-quicksight-dashboard-conditionalformattingicon-customcondition
        UpdateType: Mutable
        Type: ConditionalFormattingCustomIconCondition

    .PARAMETER IconSet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-conditionalformattingicon.html#cfn-quicksight-dashboard-conditionalformattingicon-iconset
        UpdateType: Mutable
        Type: ConditionalFormattingIconSet

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.ConditionalFormattingIcon')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CustomCondition,
        [parameter(Mandatory = $false)]
        $IconSet
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.ConditionalFormattingIcon'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
