function Add-VSImageBuilderImageRecipeAdditionalInstanceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::ImageBuilder::ImageRecipe.AdditionalInstanceConfiguration resource property to the template. In addition to your infrastruction configuration, these settings provide an extra layer of control over your build instances. For instances where Image Builder installs the Systems Manager agent, you can choose whether to keep it for the AMI that you create. You can also specify commands to run on launch for all of your build instances.

    .DESCRIPTION
        Adds an AWS::ImageBuilder::ImageRecipe.AdditionalInstanceConfiguration resource property to the template.
In addition to your infrastruction configuration, these settings provide an extra layer of control over your build instances. For instances where Image Builder installs the Systems Manager agent, you can choose whether to keep it for the AMI that you create. You can also specify commands to run on launch for all of your build instances.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-additionalinstanceconfiguration.html

    .PARAMETER SystemsManagerAgent
        Contains settings for the Systems Manager agent on your build instance.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-additionalinstanceconfiguration.html#cfn-imagebuilder-imagerecipe-additionalinstanceconfiguration-systemsmanageragent
        UpdateType: Mutable
        Type: SystemsManagerAgent

    .PARAMETER UserDataOverride
        Use this property to provide commands or a command script to run when you launch your build instance.
The userDataOverride property replaces any commands that Image Builder might have added to ensure that Systems Manager is installed on your Linux build instance. If you override the user data, make sure that you add commands to install Systems Manager, if it is not pre-installed on your base image.
The user data is always base 64 encoded. For example, the following commands are encoded as IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$:
*#!/bin/bash*
mkdir -p /var/bb/
touch /var

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-additionalinstanceconfiguration.html#cfn-imagebuilder-imagerecipe-additionalinstanceconfiguration-userdataoverride
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.ImageBuilder.ImageRecipe.AdditionalInstanceConfiguration')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $SystemsManagerAgent,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $UserDataOverride
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ImageBuilder.ImageRecipe.AdditionalInstanceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
