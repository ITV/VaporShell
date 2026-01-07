function Add-VSCasesLayoutLayoutContent {
    <#
    .SYNOPSIS
        Adds an AWS::Cases::Layout.LayoutContent resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cases::Layout.LayoutContent resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-layoutcontent.html

    .PARAMETER Basic
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-layoutcontent.html#cfn-cases-layout-layoutcontent-basic
        UpdateType: Mutable
        Type: BasicLayout

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cases.Layout.LayoutContent')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Basic

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cases.Layout.LayoutContent'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
