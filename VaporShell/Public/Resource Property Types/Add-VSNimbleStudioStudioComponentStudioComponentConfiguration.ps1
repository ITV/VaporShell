function Add-VSNimbleStudioStudioComponentStudioComponentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::NimbleStudio::StudioComponent.StudioComponentConfiguration resource property to the template. The configuration of the studio component, based on component type.

    .DESCRIPTION
        Adds an AWS::NimbleStudio::StudioComponent.StudioComponentConfiguration resource property to the template.
The configuration of the studio component, based on component type.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html

    .PARAMETER LicenseServiceConfiguration
        The configuration for a license service that is associated with a studio resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-licenseserviceconfiguration
        UpdateType: Mutable
        Type: LicenseServiceConfiguration

    .PARAMETER ComputeFarmConfiguration
        The configuration for a render farm that is associated with a studio resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-computefarmconfiguration
        UpdateType: Mutable
        Type: ComputeFarmConfiguration

    .PARAMETER ActiveDirectoryConfiguration
        The configuration for a Microsoft Active Directory Microsoft AD studio resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-activedirectoryconfiguration
        UpdateType: Mutable
        Type: ActiveDirectoryConfiguration

    .PARAMETER SharedFileSystemConfiguration
        The configuration for a shared file storage system that is associated with a studio resource.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-sharedfilesystemconfiguration
        UpdateType: Mutable
        Type: SharedFileSystemConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.NimbleStudio.StudioComponent.StudioComponentConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $LicenseServiceConfiguration,
        [parameter(Mandatory = $false)]
        $ComputeFarmConfiguration,
        [parameter(Mandatory = $false)]
        $ActiveDirectoryConfiguration,
        [parameter(Mandatory = $false)]
        $SharedFileSystemConfiguration
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.NimbleStudio.StudioComponent.StudioComponentConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
