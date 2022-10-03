function Add-VSEC2CapacityReservationFleetTagSpecification {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::CapacityReservationFleet.TagSpecification resource property to the template. The tags to apply to a resource when the resource is being created.

    .DESCRIPTION
        Adds an AWS::EC2::CapacityReservationFleet.TagSpecification resource property to the template.
The tags to apply to a resource when the resource is being created.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-tagspecification.html

    .PARAMETER ResourceType
        The type of resource to tag on creation. Specify capacity-reservation-fleet.
To tag a resource after it has been created, see CreateTags: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-tagspecification.html#cfn-ec2-capacityreservationfleet-tagspecification-resourcetype
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER Tags
        The tags to apply to the resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservationfleet-tagspecification.html#cfn-ec2-capacityreservationfleet-tagspecification-tags
        UpdateType: Immutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.EC2.CapacityReservationFleet.TagSpecification')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResourceType,
        [VaporShell.Core.TransformTag()]
        [parameter(Mandatory = $false)]
        $Tags
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.CapacityReservationFleet.TagSpecification'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
