function Add-VSAPSWorkspaceLimitsPerLabelSet {
    <#
    .SYNOPSIS
        Adds an AWS::APS::Workspace.LimitsPerLabelSet resource property to the template.

    .DESCRIPTION
        Adds an AWS::APS::Workspace.LimitsPerLabelSet resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelset.html

    .PARAMETER Limits
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelset.html#cfn-aps-workspace-limitsperlabelset-limits
        UpdateType: Mutable
        Type: LimitsPerLabelSetEntry

    .PARAMETER LabelSet
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-limitsperlabelset.html#cfn-aps-workspace-limitsperlabelset-labelset
        UpdateType: Mutable
        Type: List
        ItemType: Label
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.APS.Workspace.LimitsPerLabelSet')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $Limits,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.APS.Workspace.Label"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LabelSet

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.APS.Workspace.LimitsPerLabelSet'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
