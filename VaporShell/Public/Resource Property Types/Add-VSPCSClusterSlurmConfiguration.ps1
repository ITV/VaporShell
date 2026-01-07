function Add-VSPCSClusterSlurmConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::PCS::Cluster.SlurmConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::PCS::Cluster.SlurmConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html

    .PARAMETER JwtAuth
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-jwtauth
        UpdateType: Mutable
        Type: JwtAuth

    .PARAMETER Accounting
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-accounting
        UpdateType: Mutable
        Type: Accounting

    .PARAMETER AuthKey
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-authkey
        UpdateType: Mutable
        Type: AuthKey

    .PARAMETER ScaleDownIdleTimeInSeconds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-scaledownidletimeinseconds
        UpdateType: Mutable
        PrimitiveType: Integer

    .PARAMETER SlurmCustomSettings
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-slurmcustomsettings
        UpdateType: Mutable
        Type: List
        ItemType: SlurmCustomSetting
        DuplicatesAllowed: True

    .PARAMETER SlurmRest
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmconfiguration.html#cfn-pcs-cluster-slurmconfiguration-slurmrest
        UpdateType: Mutable
        Type: SlurmRest

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.PCS.Cluster.SlurmConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $JwtAuth,

        [Parameter(Mandatory = $false)]
        $Accounting,

        [Parameter(Mandatory = $false)]
        $AuthKey,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Int32","Vaporshell.Function"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ScaleDownIdleTimeInSeconds,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.PCS.Cluster.SlurmCustomSetting"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SlurmCustomSettings,

        [Parameter(Mandatory = $false)]
        $SlurmRest

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.PCS.Cluster.SlurmConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
