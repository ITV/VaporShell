function Add-VSCustomerProfilesCalculatedAttributeDefinitionConditions {
    <#
    .SYNOPSIS
        Adds an AWS::CustomerProfiles::CalculatedAttributeDefinition.Conditions resource property to the template.

    .DESCRIPTION
        Adds an AWS::CustomerProfiles::CalculatedAttributeDefinition.Conditions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-conditions.html

    .PARAMETER Range
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-conditions.html#cfn-customerprofiles-calculatedattributedefinition-conditions-range
        UpdateType: Mutable
        Type: Range

    .PARAMETER ObjectCount
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-conditions.html#cfn-customerprofiles-calculatedattributedefinition-conditions-objectcount
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER Threshold
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-conditions.html#cfn-customerprofiles-calculatedattributedefinition-conditions-threshold
        UpdateType: Mutable
        Type: Threshold

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CustomerProfiles.CalculatedAttributeDefinition.Conditions')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Range,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ObjectCount,

        [Parameter(Mandatory = $false)]
        $Threshold

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CustomerProfiles.CalculatedAttributeDefinition.Conditions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
