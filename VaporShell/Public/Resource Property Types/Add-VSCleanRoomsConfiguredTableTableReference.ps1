function Add-VSCleanRoomsConfiguredTableTableReference {
    <#
    .SYNOPSIS
        Adds an AWS::CleanRooms::ConfiguredTable.TableReference resource property to the template.

    .DESCRIPTION
        Adds an AWS::CleanRooms::ConfiguredTable.TableReference resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html

    .PARAMETER Glue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html#cfn-cleanrooms-configuredtable-tablereference-glue
        UpdateType: Mutable
        Type: GlueTableReference

    .PARAMETER Snowflake
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html#cfn-cleanrooms-configuredtable-tablereference-snowflake
        UpdateType: Mutable
        Type: SnowflakeTableReference

    .PARAMETER Athena
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-tablereference.html#cfn-cleanrooms-configuredtable-tablereference-athena
        UpdateType: Mutable
        Type: AthenaTableReference

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CleanRooms.ConfiguredTable.TableReference')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Glue,

        [Parameter(Mandatory = $false)]
        $Snowflake,

        [Parameter(Mandatory = $false)]
        $Athena

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CleanRooms.ConfiguredTable.TableReference'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
