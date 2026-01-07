function Add-VSKendraDataSourceDataSourceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Kendra::DataSource.DataSourceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Kendra::DataSource.DataSourceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html

    .PARAMETER TemplateConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-templateconfiguration
        UpdateType: Mutable
        Type: TemplateConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Kendra.DataSource.DataSourceConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TemplateConfiguration

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Kendra.DataSource.DataSourceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
