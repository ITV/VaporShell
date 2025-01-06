function Add-VSCloudFormationGuardHookStackRoles {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFormation::GuardHook.StackRoles resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFormation::GuardHook.StackRoles resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-stackroles.html

    .PARAMETER Exclude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-stackroles.html#cfn-cloudformation-guardhook-stackroles-exclude
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Include
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-stackroles.html#cfn-cloudformation-guardhook-stackroles-include
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFormation.GuardHook.StackRoles')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Exclude,

        [Parameter(Mandatory = $false)]
        $Include

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFormation.GuardHook.StackRoles'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
