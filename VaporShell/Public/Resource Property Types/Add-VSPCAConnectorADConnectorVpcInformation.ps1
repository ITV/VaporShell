function Add-VSPCAConnectorADConnectorVpcInformation {
    <#
    .SYNOPSIS
        Adds an AWS::PCAConnectorAD::Connector.VpcInformation resource property to the template.

    .DESCRIPTION
        Adds an AWS::PCAConnectorAD::Connector.VpcInformation resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-connector-vpcinformation.html

    .PARAMETER IpAddressType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-connector-vpcinformation.html#cfn-pcaconnectorad-connector-vpcinformation-ipaddresstype
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER SecurityGroupIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcaconnectorad-connector-vpcinformation.html#cfn-pcaconnectorad-connector-vpcinformation-securitygroupids
        UpdateType: Immutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.PCAConnectorAD.Connector.VpcInformation')]
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
        $IpAddressType,

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCAConnectorAD.Connector.VpcInformation'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
