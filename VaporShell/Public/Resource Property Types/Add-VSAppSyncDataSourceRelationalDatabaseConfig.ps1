function Add-VSAppSyncDataSourceRelationalDatabaseConfig {
    <#
    .SYNOPSIS
        Adds an AWS::AppSync::DataSource.RelationalDatabaseConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::AppSync::DataSource.RelationalDatabaseConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html

    .PARAMETER RdsHttpEndpointConfig
        Type: RdsHttpEndpointConfig
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-rdshttpendpointconfig
        UpdateType: Mutable

    .PARAMETER RelationalDatabaseSourceType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-relationaldatabaseconfig.html#cfn-appsync-datasource-relationaldatabaseconfig-relationaldatabasesourcetype
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.AppSync.DataSource.RelationalDatabaseConfig')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $RdsHttpEndpointConfig,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $RelationalDatabaseSourceType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.AppSync.DataSource.RelationalDatabaseConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
