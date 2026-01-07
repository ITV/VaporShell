function Add-VSMediaConnectRouterNetworkInterfacePublicRouterNetworkInterfaceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterNetworkInterface.PublicRouterNetworkInterfaceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterNetworkInterface.PublicRouterNetworkInterfaceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routernetworkinterface-publicrouternetworkinterfaceconfiguration.html

    .PARAMETER AllowRules
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routernetworkinterface-publicrouternetworkinterfaceconfiguration.html#cfn-mediaconnect-routernetworkinterface-publicrouternetworkinterfaceconfiguration-allowrules
        UpdateType: Mutable
        Type: List
        ItemType: PublicRouterNetworkInterfaceRule
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterNetworkInterface.PublicRouterNetworkInterfaceConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.MediaConnect.RouterNetworkInterface.PublicRouterNetworkInterfaceRule"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AllowRules

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterNetworkInterface.PublicRouterNetworkInterfaceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
