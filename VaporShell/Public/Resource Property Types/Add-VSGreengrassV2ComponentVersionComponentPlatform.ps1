function Add-VSGreengrassV2ComponentVersionComponentPlatform {
    <#
    .SYNOPSIS
        Adds an AWS::GreengrassV2::ComponentVersion.ComponentPlatform resource property to the template. Contains information about a platform that a component supports.

    .DESCRIPTION
        Adds an AWS::GreengrassV2::ComponentVersion.ComponentPlatform resource property to the template.
Contains information about a platform that a component supports.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-componentplatform.html

    .PARAMETER Name
        The friendly name of the platform. This name helps you identify the platform.
If you omit this parameter, AWS IoT Greengrass creates a friendly name from the os and architecture of the platform.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-componentplatform.html#cfn-greengrassv2-componentversion-componentplatform-name
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER Attributes
        A dictionary of attributes for the platform. The software defines the os and platform by default. You can specify additional platform attributes for a core device when you deploy the Greengrass nucleus component. For more information, see the Greengrass nucleus component: https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html in the *AWS IoT Greengrass V2 Developer Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-componentplatform.html#cfn-greengrassv2-componentversion-componentplatform-attributes
        UpdateType: Immutable
        Type: Map
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.GreengrassV2.ComponentVersion.ComponentPlatform')]
    [cmdletbinding()]
    Param
    (
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
        $Name,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Attributes
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GreengrassV2.ComponentVersion.ComponentPlatform'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
