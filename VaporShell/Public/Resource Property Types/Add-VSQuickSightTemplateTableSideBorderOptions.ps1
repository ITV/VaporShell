function Add-VSQuickSightTemplateTableSideBorderOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TableSideBorderOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TableSideBorderOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html

    .PARAMETER Left
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html#cfn-quicksight-template-tablesideborderoptions-left
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER Top
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html#cfn-quicksight-template-tablesideborderoptions-top
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER InnerHorizontal
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html#cfn-quicksight-template-tablesideborderoptions-innerhorizontal
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER Right
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html#cfn-quicksight-template-tablesideborderoptions-right
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER Bottom
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html#cfn-quicksight-template-tablesideborderoptions-bottom
        UpdateType: Mutable
        Type: TableBorderOptions

    .PARAMETER InnerVertical
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablesideborderoptions.html#cfn-quicksight-template-tablesideborderoptions-innervertical
        UpdateType: Mutable
        Type: TableBorderOptions

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.TableSideBorderOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Left,
        [parameter(Mandatory = $false)]
        $Top,
        [parameter(Mandatory = $false)]
        $InnerHorizontal,
        [parameter(Mandatory = $false)]
        $Right,
        [parameter(Mandatory = $false)]
        $Bottom,
        [parameter(Mandatory = $false)]
        $InnerVertical
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TableSideBorderOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
