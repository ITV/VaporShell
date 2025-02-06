function Add-VSGlueTableOptimizerRetentionConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Glue::TableOptimizer.RetentionConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Glue::TableOptimizer.RetentionConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration.html

    .PARAMETER IcebergConfiguration
        Type: IcebergConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-retentionconfiguration-icebergconfiguration
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Glue.TableOptimizer.RetentionConfiguration')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IcebergConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Glue.TableOptimizer.RetentionConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
