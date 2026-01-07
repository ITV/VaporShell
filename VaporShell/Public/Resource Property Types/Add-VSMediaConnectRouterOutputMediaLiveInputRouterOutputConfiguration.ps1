function Add-VSMediaConnectRouterOutputMediaLiveInputRouterOutputConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterOutput.MediaLiveInputRouterOutputConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterOutput.MediaLiveInputRouterOutputConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration.html

    .PARAMETER MediaLiveInputArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration.html#cfn-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration-medialiveinputarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER MediaLivePipelineId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration.html#cfn-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration-medialivepipelineid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER DestinationTransitEncryption
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration.html#cfn-mediaconnect-routeroutput-medialiveinputrouteroutputconfiguration-destinationtransitencryption
        UpdateType: Mutable
        Type: MediaLiveTransitEncryption

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterOutput.MediaLiveInputRouterOutputConfiguration')]
    [CmdletBinding()]

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
        $MediaLiveInputArn,

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
        $MediaLivePipelineId,

        [Parameter(Mandatory = $true)]
        $DestinationTransitEncryption

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterOutput.MediaLiveInputRouterOutputConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
