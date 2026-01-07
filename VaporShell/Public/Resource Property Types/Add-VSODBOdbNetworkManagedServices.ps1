function Add-VSODBOdbNetworkManagedServices {
    <#
    .SYNOPSIS
        Adds an AWS::ODB::OdbNetwork.ManagedServices resource property to the template.

    .DESCRIPTION
        Adds an AWS::ODB::OdbNetwork.ManagedServices resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html

    .PARAMETER ManagedServicesIpv4Cidrs
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-managedservicesipv4cidrs
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER ResourceGatewayArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-resourcegatewayarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ManagedS3BackupAccess
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-manageds3backupaccess
        UpdateType: Mutable
        Type: ManagedS3BackupAccess

    .PARAMETER ServiceNetworkEndpoint
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-servicenetworkendpoint
        UpdateType: Mutable
        Type: ServiceNetworkEndpoint

    .PARAMETER ZeroEtlAccess
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-zeroetlaccess
        UpdateType: Mutable
        Type: ZeroEtlAccess

    .PARAMETER ServiceNetworkArn
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-servicenetworkarn
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER S3Access
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-odb-odbnetwork-managedservices.html#cfn-odb-odbnetwork-managedservices-s3access
        UpdateType: Mutable
        Type: S3Access

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ODB.OdbNetwork.ManagedServices')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ManagedServicesIpv4Cidrs,

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
        $ResourceGatewayArn,

        [Parameter(Mandatory = $false)]
        $ManagedS3BackupAccess,

        [Parameter(Mandatory = $false)]
        $ServiceNetworkEndpoint,

        [Parameter(Mandatory = $false)]
        $ZeroEtlAccess,

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
        $ServiceNetworkArn,

        [Parameter(Mandatory = $false)]
        $S3Access

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ODB.OdbNetwork.ManagedServices'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
