function Add-VSWorkSpacesWebSessionLoggerLogConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::WorkSpacesWeb::SessionLogger.LogConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::WorkSpacesWeb::SessionLogger.LogConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-logconfiguration.html

    .PARAMETER S3
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesweb-sessionlogger-logconfiguration.html#cfn-workspacesweb-sessionlogger-logconfiguration-s3
        UpdateType: Mutable
        Type: S3LogConfiguration

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.WorkSpacesWeb.SessionLogger.LogConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WorkSpacesWeb.SessionLogger.LogConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
