function Add-VSDeadlineFleetAcceleratorCapabilities {
    <#
    .SYNOPSIS
        Adds an AWS::Deadline::Fleet.AcceleratorCapabilities resource property to the template.

    .DESCRIPTION
        Adds an AWS::Deadline::Fleet.AcceleratorCapabilities resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorcapabilities.html

    .PARAMETER Selections
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorcapabilities.html#cfn-deadline-fleet-acceleratorcapabilities-selections
        UpdateType: Mutable
        Type: List
        ItemType: AcceleratorSelection
        DuplicatesAllowed: True

    .PARAMETER Count
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-acceleratorcapabilities.html#cfn-deadline-fleet-acceleratorcapabilities-count
        UpdateType: Mutable
        Type: AcceleratorCountRange

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Deadline.Fleet.AcceleratorCapabilities')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.Deadline.Fleet.AcceleratorSelection"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Selections,

        [Parameter(Mandatory = $false)]
        $Count

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Deadline.Fleet.AcceleratorCapabilities'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
