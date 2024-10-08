function Add-VSGreengrassV2ComponentVersionLambdaLinuxProcessParams {
    <#
    .SYNOPSIS
        Adds an AWS::GreengrassV2::ComponentVersion.LambdaLinuxProcessParams resource property to the template.

    .DESCRIPTION
        Adds an AWS::GreengrassV2::ComponentVersion.LambdaLinuxProcessParams resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdalinuxprocessparams.html

    .PARAMETER IsolationMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdalinuxprocessparams.html#cfn-greengrassv2-componentversion-lambdalinuxprocessparams-isolationmode
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ContainerParams
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-componentversion-lambdalinuxprocessparams.html#cfn-greengrassv2-componentversion-lambdalinuxprocessparams-containerparams
        UpdateType: Immutable
        Type: LambdaContainerParams

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.GreengrassV2.ComponentVersion.LambdaLinuxProcessParams')]
    [cmdletbinding()]

    Param
    (
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
        $IsolationMode,

        [Parameter(Mandatory = $false)]
        $ContainerParams

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.GreengrassV2.ComponentVersion.LambdaLinuxProcessParams'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
