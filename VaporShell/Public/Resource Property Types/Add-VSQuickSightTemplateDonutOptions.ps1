function Add-VSQuickSightTemplateDonutOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.DonutOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.DonutOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-donutoptions.html

    .PARAMETER DonutCenterOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-donutoptions.html#cfn-quicksight-template-donutoptions-donutcenteroptions
        UpdateType: Mutable
        Type: DonutCenterOptions

    .PARAMETER ArcOptions
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-donutoptions.html#cfn-quicksight-template-donutoptions-arcoptions
        UpdateType: Mutable
        Type: ArcOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.DonutOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $DonutCenterOptions,
        [parameter(Mandatory = $false)]
        $ArcOptions
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.DonutOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
