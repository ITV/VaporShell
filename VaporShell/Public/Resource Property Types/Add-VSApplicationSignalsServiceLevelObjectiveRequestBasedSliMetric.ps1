function Add-VSApplicationSignalsServiceLevelObjectiveRequestBasedSliMetric {
    <#
    .SYNOPSIS
        Adds an AWS::ApplicationSignals::ServiceLevelObjective.RequestBasedSliMetric resource property to the template.

    .DESCRIPTION
        Adds an AWS::ApplicationSignals::ServiceLevelObjective.RequestBasedSliMetric resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html

    .PARAMETER MonitoredRequestCountMetric
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-monitoredrequestcountmetric
        UpdateType: Mutable
        Type: MonitoredRequestCountMetric

    .PARAMETER OperationName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-operationname
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER TotalRequestCountMetric
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-totalrequestcountmetric
        UpdateType: Mutable
        Type: List
        ItemType: MetricDataQuery
        DuplicatesAllowed: True

    .PARAMETER KeyAttributes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-keyattributes
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER MetricType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-requestbasedslimetric.html#cfn-applicationsignals-servicelevelobjective-requestbasedslimetric-metrictype
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.RequestBasedSliMetric')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $MonitoredRequestCountMetric,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $OperationName,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.MetricDataQuery"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $TotalRequestCountMetric,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $KeyAttributes,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $MetricType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ApplicationSignals.ServiceLevelObjective.RequestBasedSliMetric'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
