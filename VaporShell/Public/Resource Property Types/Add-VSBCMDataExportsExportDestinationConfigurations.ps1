function Add-VSBCMDataExportsExportDestinationConfigurations {
    <#
    .SYNOPSIS
        Adds an AWS::BCMDataExports::Export.DestinationConfigurations resource property to the template. 

    .DESCRIPTION
        Adds an AWS::BCMDataExports::Export.DestinationConfigurations resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-destinationconfigurations.html

    .PARAMETER S3Destination
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-destinationconfigurations.html#cfn-bcmdataexports-export-destinationconfigurations-s3destination
        UpdateType: Mutable
        Type: S3Destination

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.BCMDataExports.Export.DestinationConfigurations')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3Destination
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.BCMDataExports.Export.DestinationConfigurations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
