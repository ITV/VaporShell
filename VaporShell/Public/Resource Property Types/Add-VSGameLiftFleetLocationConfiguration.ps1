function Add-VSGameLiftFleetLocationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::GameLift::Fleet.LocationConfiguration resource property to the template. A remote location where a multi-location fleet can deploy EC2 instances for game hosting.

    .DESCRIPTION
        Adds an AWS::GameLift::Fleet.LocationConfiguration resource property to the template.
A remote location where a multi-location fleet can deploy EC2 instances for game hosting.

**Related actions**

CreateFleet: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateFleet.html

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationconfiguration.html

    .PARAMETER Location
        An AWS Region code, such as us-west-2.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationconfiguration.html#cfn-gamelift-fleet-locationconfiguration-location
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER LocationCapacity
        Current resource capacity settings in a specified fleet or location. The location value might refer to a fleet's remote location or its home Region.
**Related actions**
DescribeFleetCapacity: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html | DescribeFleetLocationCapacity: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html | UpdateFleetCapacity: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationconfiguration.html#cfn-gamelift-fleet-locationconfiguration-locationcapacity
        UpdateType: Mutable
        Type: LocationCapacity

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GameLift.Fleet.LocationConfiguration')]
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
        $Location,
        [parameter(Mandatory = $false)]
        $LocationCapacity
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GameLift.Fleet.LocationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
