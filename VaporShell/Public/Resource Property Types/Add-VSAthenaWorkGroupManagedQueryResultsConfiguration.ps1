function Add-VSAthenaWorkGroupManagedQueryResultsConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::Athena::WorkGroup.ManagedQueryResultsConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::Athena::WorkGroup.ManagedQueryResultsConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedqueryresultsconfiguration.html

    .PARAMETER EncryptionConfiguration
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedqueryresultsconfiguration.html#cfn-athena-workgroup-managedqueryresultsconfiguration-encryptionconfiguration
        UpdateType: Mutable
        Type: ManagedStorageEncryptionConfiguration

    .PARAMETER Enabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-managedqueryresultsconfiguration.html#cfn-athena-workgroup-managedqueryresultsconfiguration-enabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Athena.WorkGroup.ManagedQueryResultsConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $EncryptionConfiguration,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Enabled

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Athena.WorkGroup.ManagedQueryResultsConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
