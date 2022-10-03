function Add-VSInspectorV2FilterPackageFilter {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::Filter.PackageFilter resource property to the template. Contains information on the details of a package filter.

    .DESCRIPTION
        Adds an AWS::InspectorV2::Filter.PackageFilter resource property to the template.
Contains information on the details of a package filter.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html

    .PARAMETER Architecture
        An object that contains details on the package architecture type to filter on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-architecture
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Epoch
        An object that contains details on the package epoch to filter on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-epoch
        UpdateType: Mutable
        Type: NumberFilter

    .PARAMETER Name
        An object that contains details on the name of the package to filter on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-name
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Release
        An object that contains details on the package release to filter on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-release
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER SourceLayerHash
        An object that contains details on the source layer hash to filter on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-sourcelayerhash
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Version
        The package version to filter on.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-version
        UpdateType: Mutable
        Type: StringFilter

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.InspectorV2.Filter.PackageFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $Architecture,
        [parameter(Mandatory = $false)]
        $Epoch,
        [parameter(Mandatory = $false)]
        $Name,
        [parameter(Mandatory = $false)]
        $Release,
        [parameter(Mandatory = $false)]
        $SourceLayerHash,
        [parameter(Mandatory = $false)]
        $Version
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.Filter.PackageFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
