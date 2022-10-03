function Add-VSSSMContactsContactTargets {
    <#
    .SYNOPSIS
        Adds an AWS::SSMContacts::Contact.Targets resource property to the template. The contact or contact channel that's being engaged.

    .DESCRIPTION
        Adds an AWS::SSMContacts::Contact.Targets resource property to the template.
The contact or contact channel that's being engaged.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-targets.html

    .PARAMETER ContactTargetInfo
        The contact that Incident Manager is engaging during an incident.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-targets.html#cfn-ssmcontacts-contact-targets-contacttargetinfo
        UpdateType: Mutable
        Type: ContactTargetInfo

    .PARAMETER ChannelTargetInfo
        Information about the contact channel Incident Manager is engaging.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-targets.html#cfn-ssmcontacts-contact-targets-channeltargetinfo
        UpdateType: Mutable
        Type: ChannelTargetInfo

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SSMContacts.Contact.Targets')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ContactTargetInfo,
        [parameter(Mandatory = $false)]
        $ChannelTargetInfo
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMContacts.Contact.Targets'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
