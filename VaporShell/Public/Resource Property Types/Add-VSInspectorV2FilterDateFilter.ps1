function Add-VSInspectorV2FilterDateFilter {
    <#
    .SYNOPSIS
        Adds an AWS::InspectorV2::Filter.DateFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::InspectorV2::Filter.DateFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-datefilter.html

    .PARAMETER EndInclusive
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-datefilter.html#cfn-inspectorv2-filter-datefilter-endinclusive
        UpdateType: Mutable
        PrimitiveType: Long

    .PARAMETER StartInclusive
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-datefilter.html#cfn-inspectorv2-filter-datefilter-startinclusive
        UpdateType: Mutable
        PrimitiveType: Long

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.InspectorV2.Filter.DateFilter')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EndInclusive,

        [Parameter(Mandatory = $false)]
        $StartInclusive

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.InspectorV2.Filter.DateFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
