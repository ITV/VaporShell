function Add-VSDSQLClusterMultiRegionProperties {
    <#
    .SYNOPSIS
        Adds an AWS::DSQL::Cluster.MultiRegionProperties resource property to the template.

    .DESCRIPTION
        Adds an AWS::DSQL::Cluster.MultiRegionProperties resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-multiregionproperties.html

    .PARAMETER Clusters
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-multiregionproperties.html#cfn-dsql-cluster-multiregionproperties-clusters
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER WitnessRegion
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dsql-cluster-multiregionproperties.html#cfn-dsql-cluster-multiregionproperties-witnessregion
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.DSQL.Cluster.MultiRegionProperties')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Clusters,

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
        $WitnessRegion

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DSQL.Cluster.MultiRegionProperties'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
