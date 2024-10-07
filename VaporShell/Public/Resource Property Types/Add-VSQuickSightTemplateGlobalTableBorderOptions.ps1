function Add-VSQuickSightTemplateGlobalTableBorderOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.GlobalTableBorderOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.GlobalTableBorderOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-globaltableborderoptions.html

    .PARAMETER UniformBorder
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-globaltableborderoptions.html#cfn-quicksight-template-globaltableborderoptions-uniformborder
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER SideSpecificBorder
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-globaltableborderoptions.html#cfn-quicksight-template-globaltableborderoptions-sidespecificborder
        UpdateType: Mutable
        Type: TableSideBorderOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.GlobalTableBorderOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $UniformBorder,
        [parameter(Mandatory = $false)]
        $SideSpecificBorder
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.GlobalTableBorderOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
