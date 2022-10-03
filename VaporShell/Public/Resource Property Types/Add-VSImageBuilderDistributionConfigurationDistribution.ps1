function Add-VSImageBuilderDistributionConfigurationDistribution {
    <#
    .SYNOPSIS
        Adds an AWS::ImageBuilder::DistributionConfiguration.Distribution resource property to the template. The distribution configuration distribution defines the settings for a specific Region in the Distribution Configuration. You must specify whether the distribution is for an AMI or a container image. To do so, include exactly one of the following data types for your distribution:

    .DESCRIPTION
        Adds an AWS::ImageBuilder::DistributionConfiguration.Distribution resource property to the template.
The distribution configuration distribution defines the settings for a specific Region in the Distribution Configuration. You must specify whether the distribution is for an AMI or a container image. To do so, include exactly one of the following data types for your distribution:

+ amiDistributionConfiguration

+ containerDistributionConfiguration

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html

    .PARAMETER Region
        The target Region for the Distribution Configuration. For example, eu-west-1.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-region
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AmiDistributionConfiguration
        The specific AMI settings, such as launch permissions and AMI tags. For details, see example schema below.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-amidistributionconfiguration
        UpdateType: Mutable
        Type: AmiDistributionConfiguration

    .PARAMETER ContainerDistributionConfiguration
        Container distribution settings for encryption, licensing, and sharing in a specific Region. For details, see example schema below.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-containerdistributionconfiguration
        UpdateType: Mutable
        Type: ContainerDistributionConfiguration

    .PARAMETER LicenseConfigurationArns
        The License Manager Configuration to associate with the AMI in the specified Region. For more information, see the  LicenseConfiguration API: https://docs.aws.amazon.com/license-manager/latest/APIReference/API_LicenseConfiguration.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-licenseconfigurationarns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER LaunchTemplateConfigurations
        A group of launchTemplateConfiguration settings that apply to image distribution for specified accounts.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-launchtemplateconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: LaunchTemplateConfiguration

    .PARAMETER FastLaunchConfigurations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-distribution.html#cfn-imagebuilder-distributionconfiguration-distribution-fastlaunchconfigurations
        UpdateType: Mutable
        Type: List
        ItemType: FastLaunchConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ImageBuilder.DistributionConfiguration.Distribution')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Region,
        [parameter(Mandatory = $false)]
        $AmiDistributionConfiguration,
        [parameter(Mandatory = $false)]
        $ContainerDistributionConfiguration,
        [parameter(Mandatory = $false)]
        $LicenseConfigurationArns,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ImageBuilder.DistributionConfiguration.LaunchTemplateConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LaunchTemplateConfigurations,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.ImageBuilder.DistributionConfiguration.FastLaunchConfiguration"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FastLaunchConfigurations
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ImageBuilder.DistributionConfiguration.Distribution'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
