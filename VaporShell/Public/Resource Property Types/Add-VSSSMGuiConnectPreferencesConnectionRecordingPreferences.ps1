function Add-VSSSMGuiConnectPreferencesConnectionRecordingPreferences {
    <#
    .SYNOPSIS
        Adds an AWS::SSMGuiConnect::Preferences.ConnectionRecordingPreferences resource property to the template.

    .DESCRIPTION
        Adds an AWS::SSMGuiConnect::Preferences.ConnectionRecordingPreferences resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-connectionrecordingpreferences.html

    .PARAMETER KMSKeyArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-connectionrecordingpreferences.html#cfn-ssmguiconnect-preferences-connectionrecordingpreferences-kmskeyarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER RecordingDestinations
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-connectionrecordingpreferences.html#cfn-ssmguiconnect-preferences-connectionrecordingpreferences-recordingdestinations
        UpdateType: Mutable
        Type: RecordingDestinations

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SSMGuiConnect.Preferences.ConnectionRecordingPreferences')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $KMSKeyArn,

        [Parameter(Mandatory = $true)]
        $RecordingDestinations

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMGuiConnect.Preferences.ConnectionRecordingPreferences'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
