function Add-VSLightsailBucketAccessRules {
    <#
    .SYNOPSIS
        Adds an AWS::Lightsail::Bucket.AccessRules resource property to the template. AccessRules is a property of the AWS::Lightsail::Bucket: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html resource. It describes access rules for a bucket.

    .DESCRIPTION
        Adds an AWS::Lightsail::Bucket.AccessRules resource property to the template.
AccessRules is a property of the AWS::Lightsail::Bucket: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-bucket.html resource. It describes access rules for a bucket.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-bucket-accessrules.html

    .PARAMETER GetObject
        Specifies the anonymous access to all objects in a bucket.
The following options can be specified:
+  public - Sets all objects in the bucket to public read-only, making them readable by everyone on the internet.
If the GetObject value is set to public, then all objects in the bucket default to public regardless of the allowPublicOverrides value.
+  private - Sets all objects in the bucket to private, making them readable only by you and anyone that you grant access to.
If the GetObject value is set to private, and the allowPublicOverrides value is set to true, then all objects in the bucket default to private unless they are configured with a public-read ACL. Individual objects with a public-read ACL are readable by everyone on the internet.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-bucket-accessrules.html#cfn-lightsail-bucket-accessrules-getobject
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER AllowPublicOverrides
        A Boolean value indicating whether the access control list ACL permissions that are applied to individual objects override the GetObject option that is currently specified.
When this is true, you can use the PutObjectAcl: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObjectAcl.html Amazon S3 API operation to set individual objects to public read-only or private, using either the public-read ACL or the private ACL.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-bucket-accessrules.html#cfn-lightsail-bucket-accessrules-allowpublicoverrides
        UpdateType: Mutable
        PrimitiveType: Boolean

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lightsail.Bucket.AccessRules')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $GetObject,
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
        $AllowPublicOverrides
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lightsail.Bucket.AccessRules'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
