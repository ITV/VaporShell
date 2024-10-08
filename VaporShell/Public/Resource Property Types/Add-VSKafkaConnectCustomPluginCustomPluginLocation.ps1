function Add-VSKafkaConnectCustomPluginCustomPluginLocation {
    <#
    .SYNOPSIS
        Adds an AWS::KafkaConnect::CustomPlugin.CustomPluginLocation resource property to the template. 

    .DESCRIPTION
        Adds an AWS::KafkaConnect::CustomPlugin.CustomPluginLocation resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-customplugin-custompluginlocation.html

    .PARAMETER S3Location
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-customplugin-custompluginlocation.html#cfn-kafkaconnect-customplugin-custompluginlocation-s3location
        UpdateType: Immutable
        Type: S3Location

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KafkaConnect.CustomPlugin.CustomPluginLocation')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $S3Location
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KafkaConnect.CustomPlugin.CustomPluginLocation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
