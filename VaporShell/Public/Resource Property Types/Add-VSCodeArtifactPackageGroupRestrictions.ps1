function Add-VSCodeArtifactPackageGroupRestrictions {
    <#
    .SYNOPSIS
        Adds an AWS::CodeArtifact::PackageGroup.Restrictions resource property to the template. 

    .DESCRIPTION
        Adds an AWS::CodeArtifact::PackageGroup.Restrictions resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeartifact-packagegroup-restrictions.html

    .PARAMETER ExternalUpstream
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeartifact-packagegroup-restrictions.html#cfn-codeartifact-packagegroup-restrictions-externalupstream
        UpdateType: Mutable
        Type: RestrictionType

    .PARAMETER Publish
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeartifact-packagegroup-restrictions.html#cfn-codeartifact-packagegroup-restrictions-publish
        UpdateType: Mutable
        Type: RestrictionType

    .PARAMETER InternalUpstream
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeartifact-packagegroup-restrictions.html#cfn-codeartifact-packagegroup-restrictions-internalupstream
        UpdateType: Mutable
        Type: RestrictionType

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeArtifact.PackageGroup.Restrictions')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ExternalUpstream,
        [parameter(Mandatory = $false)]
        $Publish,
        [parameter(Mandatory = $false)]
        $InternalUpstream
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeArtifact.PackageGroup.Restrictions'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
