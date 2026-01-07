function Add-VSQuickSightDataSetRowLevelPermissionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::QuickSight::DataSet.RowLevelPermissionConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::QuickSight::DataSet.RowLevelPermissionConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissionconfiguration.html

    .PARAMETER TagConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissionconfiguration.html#cfn-quicksight-dataset-rowlevelpermissionconfiguration-tagconfiguration
        UpdateType: Mutable
        Type: RowLevelPermissionTagConfiguration

    .PARAMETER RowLevelPermissionDataSet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissionconfiguration.html#cfn-quicksight-dataset-rowlevelpermissionconfiguration-rowlevelpermissiondataset
        UpdateType: Mutable
        Type: RowLevelPermissionDataSet

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.QuickSight.DataSet.RowLevelPermissionConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TagConfiguration,

        [Parameter(Mandatory = $false)]
        $RowLevelPermissionDataSet

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.QuickSight.DataSet.RowLevelPermissionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
