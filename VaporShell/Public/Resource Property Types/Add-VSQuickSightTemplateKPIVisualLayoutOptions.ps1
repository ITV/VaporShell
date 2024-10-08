function Add-VSQuickSightTemplateKPIVisualLayoutOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.KPIVisualLayoutOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.KPIVisualLayoutOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpivisuallayoutoptions.html

    .PARAMETER StandardLayout
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpivisuallayoutoptions.html#cfn-quicksight-template-kpivisuallayoutoptions-standardlayout
        UpdateType: Mutable
        Type: KPIVisualStandardLayout

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.KPIVisualLayoutOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StandardLayout
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.KPIVisualLayoutOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
