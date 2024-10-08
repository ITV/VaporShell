function Add-VSGlueTableOpenTableFormatInput {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::Table.OpenTableFormatInput resource property to the template.

    .DESCRIPTION
        Adds an AWS::Glue::Table.OpenTableFormatInput resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-opentableformatinput.html

    .PARAMETER IcebergInput
        Type: IcebergInput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-opentableformatinput.html#cfn-glue-table-opentableformatinput-iceberginput
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Glue.Table.OpenTableFormatInput')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IcebergInput

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.Table.OpenTableFormatInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
