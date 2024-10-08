function Add-VSBackupFrameworkControlScope {
    <#
    .SYNOPSIS
        Adds an AWS::Backup::Framework.ControlScope resource property to the template.

    .DESCRIPTION
        Adds an AWS::Backup::Framework.ControlScope resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html

    .PARAMETER ComplianceResourceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html#cfn-backup-framework-controlscope-complianceresourcetypes
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER Tags
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html#cfn-backup-framework-controlscope-tags
        UpdateType: Mutable
        Type: List
        ItemType: Tag
        DuplicatesAllowed: True

    .PARAMETER ComplianceResourceIds
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-framework-controlscope.html#cfn-backup-framework-controlscope-complianceresourceids
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Backup.Framework.ControlScope')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $ComplianceResourceTypes,

        [VaporShell.Core.TransformTag()]
        [Parameter(Mandatory = $false)]
        $Tags,

        [Parameter(Mandatory = $false)]
        $ComplianceResourceIds

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Backup.Framework.ControlScope'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
