function Add-VSBackupBackupPlanIndexActionsResourceType {
    <#
    .SYNOPSIS
        Adds an AWS::Backup::BackupPlan.IndexActionsResourceType resource property to the template.

    .DESCRIPTION
        Adds an AWS::Backup::BackupPlan.IndexActionsResourceType resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-indexactionsresourcetype.html

    .PARAMETER ResourceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-indexactionsresourcetype.html#cfn-backup-backupplan-indexactionsresourcetype-resourcetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Backup.BackupPlan.IndexActionsResourceType')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ResourceTypes

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Backup.BackupPlan.IndexActionsResourceType'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
