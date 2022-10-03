function Add-VSS3BucketOwnershipControlsRule {
    <#
    .SYNOPSIS
        Adds an AWS::S3::Bucket.OwnershipControlsRule resource property to the template. Specifies an Object Ownership rule.

    .DESCRIPTION
        Adds an AWS::S3::Bucket.OwnershipControlsRule resource property to the template.
Specifies an Object Ownership rule.

S3 Object Ownership is an Amazon S3 bucket-level setting that you can use to disable access control lists (ACLs and take ownership of every object in your bucket, simplifying access management for data stored in Amazon S3. For more information, see Controlling ownership of objects and disabling ACLs: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html in the *Amazon S3 User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrolsrule.html

    .PARAMETER ObjectOwnership
        Specifies an Object Ownership rule.
*Allowed values*: BucketOwnerEnforced | ObjectWriter | BucketOwnerPreferred

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrolsrule.html#cfn-s3-bucket-ownershipcontrolsrule-objectownership
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.S3.Bucket.OwnershipControlsRule')]
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
        $ObjectOwnership
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.S3.Bucket.OwnershipControlsRule'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
