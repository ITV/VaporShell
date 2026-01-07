function Add-VSTransferConnectorConnectorEgressConfig {
    <#
    .SYNOPSIS
        Adds an AWS::Transfer::Connector.ConnectorEgressConfig resource property to the template.

    .DESCRIPTION
        Adds an AWS::Transfer::Connector.ConnectorEgressConfig resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectoregressconfig.html

    .PARAMETER VpcLattice
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-connector-connectoregressconfig.html#cfn-transfer-connector-connectoregressconfig-vpclattice
        UpdateType: Mutable
        Type: ConnectorVpcLatticeEgressConfig

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Transfer.Connector.ConnectorEgressConfig')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        $VpcLattice

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Transfer.Connector.ConnectorEgressConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
