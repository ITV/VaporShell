function Add-VSEVSEnvironmentInitialVlans {
    <#
    .SYNOPSIS
        Adds an AWS::EVS::Environment.InitialVlans resource property to the template.

    .DESCRIPTION
        Adds an AWS::EVS::Environment.InitialVlans resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html

    .PARAMETER VmkManagement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vmkmanagement
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER VTep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vtep
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER ExpansionVlan2
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-expansionvlan2
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER VSan
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vsan
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER VMotion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vmotion
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER IsHcxPublic
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-ishcxpublic
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER Hcx
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-hcx
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER EdgeVTep
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-edgevtep
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER HcxNetworkAclId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-hcxnetworkaclid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ExpansionVlan1
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-expansionvlan1
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER VmManagement
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-vmmanagement
        UpdateType: Mutable
        Type: InitialVlanInfo

    .PARAMETER NsxUpLink
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-initialvlans.html#cfn-evs-environment-initialvlans-nsxuplink
        UpdateType: Mutable
        Type: InitialVlanInfo

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EVS.Environment.InitialVlans')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $VmkManagement,

        [Parameter(Mandatory = $true)]
        $VTep,

        [Parameter(Mandatory = $true)]
        $ExpansionVlan2,

        [Parameter(Mandatory = $true)]
        $VSan,

        [Parameter(Mandatory = $true)]
        $VMotion,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IsHcxPublic,

        [Parameter(Mandatory = $true)]
        $Hcx,

        [Parameter(Mandatory = $true)]
        $EdgeVTep,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $HcxNetworkAclId,

        [Parameter(Mandatory = $true)]
        $ExpansionVlan1,

        [Parameter(Mandatory = $true)]
        $VmManagement,

        [Parameter(Mandatory = $true)]
        $NsxUpLink

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EVS.Environment.InitialVlans'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
