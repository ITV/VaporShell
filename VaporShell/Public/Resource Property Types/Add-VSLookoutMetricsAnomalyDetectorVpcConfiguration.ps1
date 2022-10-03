function Add-VSLookoutMetricsAnomalyDetectorVpcConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::LookoutMetrics::AnomalyDetector.VpcConfiguration resource property to the template. Contains configuration information about the Amazon Virtual Private Cloud (VPC.

    .DESCRIPTION
        Adds an AWS::LookoutMetrics::AnomalyDetector.VpcConfiguration resource property to the template.
Contains configuration information about the Amazon Virtual Private Cloud (VPC.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-vpcconfiguration.html

    .PARAMETER SubnetIdList
        An array of strings containing the Amazon VPC subnet IDs e.g., subnet-0bb1c79de3EXAMPLE.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-vpcconfiguration.html#cfn-lookoutmetrics-anomalydetector-vpcconfiguration-subnetidlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER SecurityGroupIdList
        An array of strings containing the list of security groups.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-vpcconfiguration.html#cfn-lookoutmetrics-anomalydetector-vpcconfiguration-securitygroupidlist
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LookoutMetrics.AnomalyDetector.VpcConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $SubnetIdList,
        [parameter(Mandatory = $true)]
        $SecurityGroupIdList
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LookoutMetrics.AnomalyDetector.VpcConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
