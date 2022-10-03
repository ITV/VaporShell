function Add-VSIVSRecordingConfigurationDestinationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IVS::RecordingConfiguration.DestinationConfiguration resource property to the template. The DestinationConfiguration property type describes the location where recorded videos will be stored. Each member represents a type of destination configuration. For recording, you define one and only one type of destination configuration.

    .DESCRIPTION
        Adds an AWS::IVS::RecordingConfiguration.DestinationConfiguration resource property to the template.
The DestinationConfiguration property type describes the location where recorded videos will be stored. Each member represents a type of destination configuration. For recording, you define one and only one type of destination configuration.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-destinationconfiguration.html

    .PARAMETER S3
        An S3 destination configuration where recorded videos will be stored. See the S3DestinationConfiguration: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-s3destinationconfiguration.html property type for more information.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ivs-recordingconfiguration-destinationconfiguration.html#cfn-ivs-recordingconfiguration-destinationconfiguration-s3
        UpdateType: Immutable
        Type: S3DestinationConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IVS.RecordingConfiguration.DestinationConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IVS.RecordingConfiguration.DestinationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
