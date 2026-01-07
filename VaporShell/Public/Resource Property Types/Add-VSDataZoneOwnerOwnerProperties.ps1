function Add-VSDataZoneOwnerOwnerProperties {
    <#
    .SYNOPSIS
        Adds an AWS::DataZone::Owner.OwnerProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::DataZone::Owner.OwnerProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownerproperties.html

    .PARAMETER Group
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownerproperties.html#cfn-datazone-owner-ownerproperties-group
        UpdateType: Immutable
        Type: OwnerGroupProperties

    .PARAMETER User
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-owner-ownerproperties.html#cfn-datazone-owner-ownerproperties-user
        UpdateType: Immutable
        Type: OwnerUserProperties

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DataZone.Owner.OwnerProperties')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Group,

        [Parameter(Mandatory = $false)]
        $User

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DataZone.Owner.OwnerProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
