function Add-VSCasesLayoutBasicLayout {
    <#
    .SYNOPSIS
        Adds an AWS::Cases::Layout.BasicLayout resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cases::Layout.BasicLayout resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-basiclayout.html

    .PARAMETER TopPanel
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-basiclayout.html#cfn-cases-layout-basiclayout-toppanel
        UpdateType: Mutable
        Type: LayoutSections

    .PARAMETER MoreInfo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-basiclayout.html#cfn-cases-layout-basiclayout-moreinfo
        UpdateType: Mutable
        Type: LayoutSections

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cases.Layout.BasicLayout')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TopPanel,

        [Parameter(Mandatory = $false)]
        $MoreInfo

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cases.Layout.BasicLayout'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
