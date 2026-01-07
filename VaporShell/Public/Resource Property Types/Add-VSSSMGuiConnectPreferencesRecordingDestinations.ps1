function Add-VSSSMGuiConnectPreferencesRecordingDestinations {
    <#
    .SYNOPSIS
        Adds an AWS::SSMGuiConnect::Preferences.RecordingDestinations resource property to the template.

    .DESCRIPTION
        Adds an AWS::SSMGuiConnect::Preferences.RecordingDestinations resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-recordingdestinations.html

    .PARAMETER S3Buckets
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-recordingdestinations.html#cfn-ssmguiconnect-preferences-recordingdestinations-s3buckets
        UpdateType: Mutable
        Type: List
        ItemType: S3Bucket
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SSMGuiConnect.Preferences.RecordingDestinations')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SSMGuiConnect.Preferences.S3Bucket"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $S3Buckets

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SSMGuiConnect.Preferences.RecordingDestinations'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
