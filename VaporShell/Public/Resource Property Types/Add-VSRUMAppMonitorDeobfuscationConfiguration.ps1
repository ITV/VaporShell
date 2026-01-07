function Add-VSRUMAppMonitorDeobfuscationConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::RUM::AppMonitor.DeobfuscationConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::RUM::AppMonitor.DeobfuscationConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-deobfuscationconfiguration.html

    .PARAMETER JavaScriptSourceMaps
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rum-appmonitor-deobfuscationconfiguration.html#cfn-rum-appmonitor-deobfuscationconfiguration-javascriptsourcemaps
        UpdateType: Mutable
        Type: JavaScriptSourceMaps

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RUM.AppMonitor.DeobfuscationConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $JavaScriptSourceMaps

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RUM.AppMonitor.DeobfuscationConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
