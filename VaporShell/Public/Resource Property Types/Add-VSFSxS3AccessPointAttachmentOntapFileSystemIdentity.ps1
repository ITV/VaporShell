function Add-VSFSxS3AccessPointAttachmentOntapFileSystemIdentity {
    <#
    .SYNOPSIS
        Adds an AWS::FSx::S3AccessPointAttachment.OntapFileSystemIdentity resource property to the template.

    .DESCRIPTION
        Adds an AWS::FSx::S3AccessPointAttachment.OntapFileSystemIdentity resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-ontapfilesystemidentity.html

    .PARAMETER Type
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-ontapfilesystemidentity.html#cfn-fsx-s3accesspointattachment-ontapfilesystemidentity-type
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER UnixUser
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-ontapfilesystemidentity.html#cfn-fsx-s3accesspointattachment-ontapfilesystemidentity-unixuser
        UpdateType: Immutable
        Type: OntapUnixFileSystemUser

    .PARAMETER WindowsUser
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-ontapfilesystemidentity.html#cfn-fsx-s3accesspointattachment-ontapfilesystemidentity-windowsuser
        UpdateType: Immutable
        Type: OntapWindowsFileSystemUser

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.FSx.S3AccessPointAttachment.OntapFileSystemIdentity')]
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
        $Type,

        [Parameter(Mandatory = $false)]
        $UnixUser,

        [Parameter(Mandatory = $false)]
        $WindowsUser

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FSx.S3AccessPointAttachment.OntapFileSystemIdentity'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
