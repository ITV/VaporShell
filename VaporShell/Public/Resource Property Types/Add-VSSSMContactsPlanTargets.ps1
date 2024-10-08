function Add-VSSSMContactsPlanTargets {
    <#
    .SYNOPSIS
        Adds an AWS::SSMContacts::Plan.Targets resource property to the template.

    .DESCRIPTION
        Adds an AWS::SSMContacts::Plan.Targets resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-plan-targets.html

    .PARAMETER ChannelTargetInfo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-plan-targets.html#cfn-ssmcontacts-plan-targets-channeltargetinfo
        UpdateType: Mutable
        Type: ChannelTargetInfo

    .PARAMETER ContactTargetInfo
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-plan-targets.html#cfn-ssmcontacts-plan-targets-contacttargetinfo
        UpdateType: Mutable
        Type: ContactTargetInfo

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SSMContacts.Plan.Targets')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ChannelTargetInfo,

        [Parameter(Mandatory = $false)]
        $ContactTargetInfo

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMContacts.Plan.Targets'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
