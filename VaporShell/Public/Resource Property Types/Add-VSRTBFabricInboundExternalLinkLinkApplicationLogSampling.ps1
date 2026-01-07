function Add-VSRTBFabricInboundExternalLinkLinkApplicationLogSampling {
    <#
    .SYNOPSIS
        Adds an AWS::RTBFabric::InboundExternalLink.LinkApplicationLogSampling resource property to the template.

    .DESCRIPTION
        Adds an AWS::RTBFabric::InboundExternalLink.LinkApplicationLogSampling resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-inboundexternallink-linkapplicationlogsampling.html

    .PARAMETER FilterLog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-inboundexternallink-linkapplicationlogsampling.html#cfn-rtbfabric-inboundexternallink-linkapplicationlogsampling-filterlog
        UpdateType: Conditional
        PrimitiveType: Double

    .PARAMETER ErrorLog
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-inboundexternallink-linkapplicationlogsampling.html#cfn-rtbfabric-inboundexternallink-linkapplicationlogsampling-errorlog
        UpdateType: Conditional
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.RTBFabric.InboundExternalLink.LinkApplicationLogSampling')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FilterLog,

        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ErrorLog

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.RTBFabric.InboundExternalLink.LinkApplicationLogSampling'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
