function Add-VSFSxS3AccessPointAttachmentS3AccessPointOpenZFSConfiguration {
    <#
    .SYNOPSIS
        Adds an AWS::FSx::S3AccessPointAttachment.S3AccessPointOpenZFSConfiguration resource property to the template.

    .DESCRIPTION
        Adds an AWS::FSx::S3AccessPointAttachment.S3AccessPointOpenZFSConfiguration resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration.html

    .PARAMETER VolumeId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration.html#cfn-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration-volumeid
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER FileSystemIdentity
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration.html#cfn-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration-filesystemidentity
        UpdateType: Immutable
        Type: OpenZFSFileSystemIdentity

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.FSx.S3AccessPointAttachment.S3AccessPointOpenZFSConfiguration')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $VolumeId,

        [Parameter(Mandatory = $true)]
        $FileSystemIdentity

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FSx.S3AccessPointAttachment.S3AccessPointOpenZFSConfiguration'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
