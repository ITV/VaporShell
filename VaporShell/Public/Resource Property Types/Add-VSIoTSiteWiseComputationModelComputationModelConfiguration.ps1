function Add-VSIoTSiteWiseComputationModelComputationModelConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::IoTSiteWise::ComputationModel.ComputationModelConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTSiteWise::ComputationModel.ComputationModelConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodelconfiguration.html

    .PARAMETER AnomalyDetection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotsitewise-computationmodel-computationmodelconfiguration.html#cfn-iotsitewise-computationmodel-computationmodelconfiguration-anomalydetection
        UpdateType: Mutable
        Type: AnomalyDetectionComputationModelConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTSiteWise.ComputationModel.ComputationModelConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $AnomalyDetection

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTSiteWise.ComputationModel.ComputationModelConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
