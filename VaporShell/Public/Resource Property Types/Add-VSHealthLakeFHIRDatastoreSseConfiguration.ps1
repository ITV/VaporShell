function Add-VSHealthLakeFHIRDatastoreSseConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::HealthLake::FHIRDatastore.SseConfiguration resource property to the template. The server-side encryption key configuration for a customer provided encryption key.

    .DESCRIPTION
        Adds an AWS::HealthLake::FHIRDatastore.SseConfiguration resource property to the template.
The server-side encryption key configuration for a customer provided encryption key.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-sseconfiguration.html

    .PARAMETER KmsEncryptionConfig
        The server-side encryption key configuration for a customer provided encryption key CMK.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-sseconfiguration.html#cfn-healthlake-fhirdatastore-sseconfiguration-kmsencryptionconfig
        UpdateType: Immutable
        Type: KmsEncryptionConfig

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.HealthLake.FHIRDatastore.SseConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $KmsEncryptionConfig
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.HealthLake.FHIRDatastore.SseConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
