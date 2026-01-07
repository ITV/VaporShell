function Add-VSEC2RouteServerPeerBgpOptions {
    <#
    .SYNOPSIS
        Adds an AWS::EC2::RouteServerPeer.BgpOptions resource property to the template.

    .DESCRIPTION
        Adds an AWS::EC2::RouteServerPeer.BgpOptions resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-routeserverpeer-bgpoptions.html

    .PARAMETER PeerLivenessDetection
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-routeserverpeer-bgpoptions.html#cfn-ec2-routeserverpeer-bgpoptions-peerlivenessdetection
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER PeerAsn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-routeserverpeer-bgpoptions.html#cfn-ec2-routeserverpeer-bgpoptions-peerasn
        UpdateType: Immutable
        PrimitiveType: Long

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.EC2.RouteServerPeer.BgpOptions')]
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
        $PeerLivenessDetection,

        [Parameter(Mandatory = $false)]
        $PeerAsn

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.EC2.RouteServerPeer.BgpOptions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
