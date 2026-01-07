function Add-VSCasesLayoutSection {
    <#
    .SYNOPSIS
        Adds an AWS::Cases::Layout.Section resource property to the template.

    .DESCRIPTION
        Adds an AWS::Cases::Layout.Section resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-section.html

    .PARAMETER FieldGroup
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cases-layout-section.html#cfn-cases-layout-section-fieldgroup
        UpdateType: Mutable
        Type: FieldGroup

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Cases.Layout.Section')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $FieldGroup

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Cases.Layout.Section'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
