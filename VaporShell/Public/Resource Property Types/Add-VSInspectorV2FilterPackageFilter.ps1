function Add-VSInspectorV2FilterPackageFilter {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::Filter.PackageFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::InspectorV2::Filter.PackageFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html

    .PARAMETER Architecture
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-architecture
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Version
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-version
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Epoch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-epoch
        UpdateType: Mutable
        Type: NumberFilter

    .PARAMETER SourceLayerHash
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-sourcelayerhash
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Release
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-release
        UpdateType: Mutable
        Type: StringFilter

    .PARAMETER Name
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-name
        UpdateType: Mutable
        Type: StringFilter

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.InspectorV2.Filter.PackageFilter')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Architecture,

        [Parameter(Mandatory = $false)]
        $Version,

        [Parameter(Mandatory = $false)]
        $Epoch,

        [Parameter(Mandatory = $false)]
        $SourceLayerHash,

        [Parameter(Mandatory = $false)]
        $Release,

        [Parameter(Mandatory = $false)]
        $Name

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
