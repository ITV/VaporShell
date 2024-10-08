function Add-VSMediaLiveMultiplexprogramMultiplexVideoSettings {
    <#
    .SYNOPSIS
        Adds an AWS::MediaLive::Multiplexprogram.MultiplexVideoSettings resource property to the template. 

    .DESCRIPTION
        Adds an AWS::MediaLive::Multiplexprogram.MultiplexVideoSettings resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexvideosettings.html

    .PARAMETER StatmuxSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexvideosettings.html#cfn-medialive-multiplexprogram-multiplexvideosettings-statmuxsettings
        UpdateType: Mutable
        Type: MultiplexStatmuxVideoSettings

    .PARAMETER ConstantBitrate
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexvideosettings.html#cfn-medialive-multiplexprogram-multiplexvideosettings-constantbitrate
        UpdateType: Mutable
        PrimitiveType: Integer

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.MediaLive.Multiplexprogram.MultiplexVideoSettings')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StatmuxSettings,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ConstantBitrate
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaLive.Multiplexprogram.MultiplexVideoSettings'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
