function Add-VSIoTEventsDetectorModelDetectorModelDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::IoTEvents::DetectorModel.DetectorModelDefinition resource property to the template. Information that defines how a detector operates.

    .DESCRIPTION
        Adds an AWS::IoTEvents::DetectorModel.DetectorModelDefinition resource property to the template.
Information that defines how a detector operates.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html

    .PARAMETER InitialStateName
        The state that is entered at the creation of each detector instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-initialstatename
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER States
        Information about the states of the detector.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-detectormodeldefinition.html#cfn-iotevents-detectormodel-detectormodeldefinition-states
        UpdateType: Mutable
        Type: List
        ItemType: State
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.IoTEvents.DetectorModel.DetectorModelDefinition')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InitialStateName,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.IoTEvents.DetectorModel.State"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $States
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTEvents.DetectorModel.DetectorModelDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
