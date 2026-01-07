function Add-VSIoTFleetWiseVehicleStateTemplateAssociation {
    <#
    .SYNOPSIS
        Adds an AWS::IoTFleetWise::Vehicle.StateTemplateAssociation resource property to the template.

    .DESCRIPTION
        Adds an AWS::IoTFleetWise::Vehicle.StateTemplateAssociation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateassociation.html

    .PARAMETER Identifier
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateassociation.html#cfn-iotfleetwise-vehicle-statetemplateassociation-identifier
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER StateTemplateUpdateStrategy
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-statetemplateassociation.html#cfn-iotfleetwise-vehicle-statetemplateassociation-statetemplateupdatestrategy
        UpdateType: Mutable
        Type: StateTemplateUpdateStrategy

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.IoTFleetWise.Vehicle.StateTemplateAssociation')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Identifier,

        [Parameter(Mandatory = $true)]
        $StateTemplateUpdateStrategy

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.IoTFleetWise.Vehicle.StateTemplateAssociation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
