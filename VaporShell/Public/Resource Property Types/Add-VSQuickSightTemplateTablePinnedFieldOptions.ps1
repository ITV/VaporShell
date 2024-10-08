function Add-VSQuickSightTemplateTablePinnedFieldOptions {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::Template.TablePinnedFieldOptions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::QuickSight::Template.TablePinnedFieldOptions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablepinnedfieldoptions.html

    .PARAMETER PinnedLeftFields
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablepinnedfieldoptions.html#cfn-quicksight-template-tablepinnedfieldoptions-pinnedleftfields
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.QuickSight.Template.TablePinnedFieldOptions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $PinnedLeftFields
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.Template.TablePinnedFieldOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
