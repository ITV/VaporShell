function Add-VSCustomerProfilesDomainExportingConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::Domain.ExportingConfig resource property to the template. 

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::Domain.ExportingConfig resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-exportingconfig.html

    .PARAMETER S3Exporting
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-exportingconfig.html#cfn-customerprofiles-domain-exportingconfig-s3exporting
        UpdateType: Mutable
        Type: S3ExportingConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CustomerProfiles.Domain.ExportingConfig')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $S3Exporting
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.Domain.ExportingConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
