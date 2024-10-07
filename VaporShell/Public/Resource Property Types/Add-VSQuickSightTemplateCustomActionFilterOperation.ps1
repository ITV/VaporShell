function Add-VSQuickSightTemplateCustomActionFilterOperation {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.CustomActionFilterOperation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.CustomActionFilterOperation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionfilteroperation.html

    .PARAMETER SelectedFieldsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionfilteroperation.html#cfn-quicksight-template-customactionfilteroperation-selectedfieldsconfiguration
        UpdateType: Mutable
        Type: FilterOperationSelectedFieldsConfiguration

    .PARAMETER TargetVisualsConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-customactionfilteroperation.html#cfn-quicksight-template-customactionfilteroperation-targetvisualsconfiguration
        UpdateType: Mutable
        Type: FilterOperationTargetVisualsConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.CustomActionFilterOperation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SelectedFieldsConfiguration,
        [parameter(Mandatory = $true)]
        $TargetVisualsConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.CustomActionFilterOperation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
