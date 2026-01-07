function Add-VSMediaConnectRouterNetworkInterfaceVpcRouterNetworkInterfaceConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::MediaConnect::RouterNetworkInterface.VpcRouterNetworkInterfaceConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::MediaConnect::RouterNetworkInterface.VpcRouterNetworkInterfaceConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routernetworkinterface-vpcrouternetworkinterfaceconfiguration.html

    .PARAMETER SubnetId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routernetworkinterface-vpcrouternetworkinterfaceconfiguration.html#cfn-mediaconnect-routernetworkinterface-vpcrouternetworkinterfaceconfiguration-subnetid
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER SecurityGroupIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-routernetworkinterface-vpcrouternetworkinterfaceconfiguration.html#cfn-mediaconnect-routernetworkinterface-vpcrouternetworkinterfaceconfiguration-securitygroupids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.MediaConnect.RouterNetworkInterface.VpcRouterNetworkInterfaceConfiguration')]
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
        $SubnetId,

        [Parameter(Mandatory = $true)]
        $SecurityGroupIds

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.MediaConnect.RouterNetworkInterface.VpcRouterNetworkInterfaceConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
