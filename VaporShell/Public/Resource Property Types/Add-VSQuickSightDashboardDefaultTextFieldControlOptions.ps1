function Add-VSQuickSightDashboardDefaultTextFieldControlOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Dashboard.DefaultTextFieldControlOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Dashboard.DefaultTextFieldControlOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaulttextfieldcontroloptions.html

    .PARAMETER DisplayOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-defaulttextfieldcontroloptions.html#cfn-quicksight-dashboard-defaulttextfieldcontroloptions-displayoptions
        UpdateType: Mutable
        Type: TextFieldControlDisplayOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Dashboard.DefaultTextFieldControlOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DisplayOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Dashboard.DefaultTextFieldControlOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
