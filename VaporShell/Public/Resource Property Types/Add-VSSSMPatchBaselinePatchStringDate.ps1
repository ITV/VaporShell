function Add-VSSSMPatchBaselinePatchStringDate {
    <#
    .SYNOPSIS
        Adds an AWS::SSM::PatchBaseline.PatchStringDate resource property to the template. The date for ApproveUntilDate, as a String in the format YYYY-MM-DD. For example, 2020-12-31.

    .DESCRIPTION
        Adds an AWS::SSM::PatchBaseline.PatchStringDate resource property to the template.
The date for ApproveUntilDate, as a String in the format YYYY-MM-DD. For example, 2020-12-31.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-patchbaseline-patchstringdate.html

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSM.PatchBaseline.PatchStringDate')]
    [cmdletbinding()]
    Param
    (
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSM.PatchBaseline.PatchStringDate'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
