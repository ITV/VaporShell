function Add-VSIoTFleetWiseSignalCatalogNode {
    <#
    .SYNOPSIS
        Adds an AWS::IoTFleetWise::SignalCatalog.Node resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTFleetWise::SignalCatalog.Node resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-node.html

    .PARAMETER Attribute
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-node.html#cfn-iotfleetwise-signalcatalog-node-attribute
        UpdateType: Mutable
        Type: Attribute

    .PARAMETER Branch
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-node.html#cfn-iotfleetwise-signalcatalog-node-branch
        UpdateType: Mutable
        Type: Branch

    .PARAMETER Sensor
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-node.html#cfn-iotfleetwise-signalcatalog-node-sensor
        UpdateType: Mutable
        Type: Sensor

    .PARAMETER Actuator
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-signalcatalog-node.html#cfn-iotfleetwise-signalcatalog-node-actuator
        UpdateType: Mutable
        Type: Actuator

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTFleetWise.SignalCatalog.Node')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Attribute,

        [Parameter(Mandatory = $false)]
        $Branch,

        [Parameter(Mandatory = $false)]
        $Sensor,

        [Parameter(Mandatory = $false)]
        $Actuator

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTFleetWise.SignalCatalog.Node'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
