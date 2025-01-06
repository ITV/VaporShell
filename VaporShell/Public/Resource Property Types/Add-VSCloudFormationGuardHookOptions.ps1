function Add-VSCloudFormationGuardHookOptions {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFormation::GuardHook.Options resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFormation::GuardHook.Options resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-options.html

    .PARAMETER InputParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-guardhook-options.html#cfn-cloudformation-guardhook-options-inputparams
        UpdateType: Mutable
        Type: S3Location

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFormation.GuardHook.Options')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $InputParams

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFormation.GuardHook.Options'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
