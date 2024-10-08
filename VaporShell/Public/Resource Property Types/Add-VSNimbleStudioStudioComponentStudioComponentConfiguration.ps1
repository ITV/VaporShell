function Add-VSNimbleStudioStudioComponentStudioComponentConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::NimbleStudio::StudioComponent.StudioComponentConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::NimbleStudio::StudioComponent.StudioComponentConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html

    .PARAMETER LicenseServiceConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-licenseserviceconfiguration
        UpdateType: Mutable
        Type: LicenseServiceConfiguration

    .PARAMETER ComputeFarmConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-computefarmconfiguration
        UpdateType: Mutable
        Type: ComputeFarmConfiguration

    .PARAMETER ActiveDirectoryConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-studiocomponentconfiguration.html#cfn-nimblestudio-studiocomponent-studiocomponentconfiguration-activedirectoryconfiguration
        UpdateType: Mutable
        Type: ActiveDirectoryConfiguration

    .PARAMETER SharedFileSystemConfiguration
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
        [Parameter(Mandatory = $false)]
        $LicenseServiceConfiguration,

        [Parameter(Mandatory = $false)]
        $ComputeFarmConfiguration,

        [Parameter(Mandatory = $false)]
        $ActiveDirectoryConfiguration,

        [Parameter(Mandatory = $false)]
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
