function Add-VSS3ExpressDirectoryBucketServerSideEncryptionRule {
    <#
    .SYNOPSIS
        Adds an AWS::S3Express::DirectoryBucket.ServerSideEncryptionRule resource property to the template.

    .DESCRIPTION
        Adds an AWS::S3Express::DirectoryBucket.ServerSideEncryptionRule resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-serversideencryptionrule.html

    .PARAMETER BucketKeyEnabled
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-serversideencryptionrule.html#cfn-s3express-directorybucket-serversideencryptionrule-bucketkeyenabled
        UpdateType: Mutable
        PrimitiveType: Boolean

    .PARAMETER ServerSideEncryptionByDefault
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3express-directorybucket-serversideencryptionrule.html#cfn-s3express-directorybucket-serversideencryptionrule-serversideencryptionbydefault
        UpdateType: Mutable
        Type: ServerSideEncryptionByDefault

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.S3Express.DirectoryBucket.ServerSideEncryptionRule')]
    [cmdletbinding()]

    Param
    (
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
        $BucketKeyEnabled,

        [Parameter(Mandatory = $false)]
        $ServerSideEncryptionByDefault

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3Express.DirectoryBucket.ServerSideEncryptionRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
