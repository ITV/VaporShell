function Add-VSKafkaConnectConnectorPlugin {
    <#
    .SYNOPSIS
        Adds an AWS::KafkaConnect::Connector.Plugin resource property to the template. A plugin is an AWS resource that contains the code that defines your connector logic.

    .DESCRIPTION
        Adds an AWS::KafkaConnect::Connector.Plugin resource property to the template.
A plugin is an AWS resource that contains the code that defines your connector logic.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-plugin.html

    .PARAMETER CustomPlugin
        Details about a custom plugin.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-plugin.html#cfn-kafkaconnect-connector-plugin-customplugin
        UpdateType: Immutable
        Type: CustomPlugin

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KafkaConnect.Connector.Plugin')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $CustomPlugin
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KafkaConnect.Connector.Plugin'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
