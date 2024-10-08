function Add-VSFSxVolumeSnaplockRetentionPeriod {
    <#
    .SYNOPSIS
        Adds an AWS::FSx::Volume.SnaplockRetentionPeriod resource property to the template. 

    .DESCRIPTION
        Adds an AWS::FSx::Volume.SnaplockRetentionPeriod resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html

    .PARAMETER DefaultRetention
        Type: RetentionPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html#cfn-fsx-volume-snaplockretentionperiod-defaultretention
        UpdateType: Mutable

    .PARAMETER MaximumRetention
        Type: RetentionPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html#cfn-fsx-volume-snaplockretentionperiod-maximumretention
        UpdateType: Mutable

    .PARAMETER MinimumRetention
        Type: RetentionPeriod
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html#cfn-fsx-volume-snaplockretentionperiod-minimumretention
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.FSx.Volume.SnaplockRetentionPeriod')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        $DefaultRetention,
        [parameter(Mandatory = $true)]
        $MaximumRetention,
        [parameter(Mandatory = $true)]
        $MinimumRetention
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FSx.Volume.SnaplockRetentionPeriod'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
