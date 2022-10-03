function Add-VSCodeBuildProjectBuildStatusConfig {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.BuildStatusConfig resource property to the template. Contains information that defines how the AWS CodeBuild build project reports the build status to the source provider.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.BuildStatusConfig resource property to the template.
Contains information that defines how the AWS CodeBuild build project reports the build status to the source provider.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html

    .PARAMETER Context
        Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.
Bitbucket
This parameter is used for the name parameter in the Bitbucket commit status. For more information, see build: https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build in the Bitbucket API documentation.
GitHub/GitHub Enterprise Server
This parameter is used for the context parameter in the GitHub commit status. For more information, see Create a commit status: https://developer.github.com/v3/repos/statuses/#create-a-commit-status in the GitHub developer guide.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html#cfn-codebuild-project-buildstatusconfig-context
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER TargetUrl
        Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.
Bitbucket
This parameter is used for the url parameter in the Bitbucket commit status. For more information, see build: https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build in the Bitbucket API documentation.
GitHub/GitHub Enterprise Server
This parameter is used for the target_url parameter in the GitHub commit status. For more information, see Create a commit status: https://developer.github.com/v3/repos/statuses/#create-a-commit-status in the GitHub developer guide.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html#cfn-codebuild-project-buildstatusconfig-targeturl
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodeBuild.Project.BuildStatusConfig')]
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
        $Context,
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
        $TargetUrl
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.BuildStatusConfig'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
