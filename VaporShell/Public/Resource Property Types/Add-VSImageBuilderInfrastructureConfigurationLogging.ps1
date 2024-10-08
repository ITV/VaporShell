function Add-VSImageBuilderInfrastructureConfigurationLogging {
    <#
    .SYNOPSIS
        Adds an AWS::ImageBuilder::InfrastructureConfiguration.Logging resource property to the template.

    .DESCRIPTION
        Adds an AWS::ImageBuilder::InfrastructureConfiguration.Logging resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-logging.html

    .PARAMETER S3Logs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-logging.html#cfn-imagebuilder-infrastructureconfiguration-logging-s3logs
        UpdateType: Mutable
        Type: S3Logs

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ImageBuilder.InfrastructureConfiguration.Logging')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3Logs

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ImageBuilder.InfrastructureConfiguration.Logging'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
