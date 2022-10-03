function Add-VSS3StorageLensPrefixLevelStorageMetrics {
    <#
    .SYNOPSIS
        Adds an AWS::S3::StorageLens.PrefixLevelStorageMetrics resource property to the template. This resource contains the details of the prefix-level storage metrics for Amazon S3 Storage Lens.

    .DESCRIPTION
        Adds an AWS::S3::StorageLens.PrefixLevelStorageMetrics resource property to the template.
This resource contains the details of the prefix-level storage metrics for Amazon S3 Storage Lens.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevelstoragemetrics.html

    .PARAMETER IsEnabled
        This property identifies whether the details of the prefix-level storage metrics for S3 Storage Lens are enabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevelstoragemetrics.html#cfn-s3-storagelens-prefixlevelstoragemetrics-isenabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER SelectionCriteria
        This property identifies whether the details of the prefix-level storage metrics for S3 Storage Lens are enabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevelstoragemetrics.html#cfn-s3-storagelens-prefixlevelstoragemetrics-selectioncriteria
        UpdateType: Mutable
        Type: SelectionCriteria

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.StorageLens.PrefixLevelStorageMetrics')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $IsEnabled,
        [parameter(Mandatory = $false)]
        $SelectionCriteria
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.StorageLens.PrefixLevelStorageMetrics'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
