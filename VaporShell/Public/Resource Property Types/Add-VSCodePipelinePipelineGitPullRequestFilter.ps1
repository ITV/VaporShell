function Add-VSCodePipelinePipelineGitPullRequestFilter {
    <#
    .SYNOPSIS
        Adds an AWS::CodePipeline::Pipeline.GitPullRequestFilter resource property to the template. 

    .DESCRIPTION
        Adds an AWS::CodePipeline::Pipeline.GitPullRequestFilter resource property to the template.


    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html

    .PARAMETER FilePaths
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html#cfn-codepipeline-pipeline-gitpullrequestfilter-filepaths
        UpdateType: Mutable
        Type: GitFilePathFilterCriteria

    .PARAMETER Events
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html#cfn-codepipeline-pipeline-gitpullrequestfilter-events
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Branches
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-gitpullrequestfilter.html#cfn-codepipeline-pipeline-gitpullrequestfilter-branches
        UpdateType: Mutable
        Type: GitBranchFilterCriteria

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.CodePipeline.Pipeline.GitPullRequestFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $FilePaths,
        [parameter(Mandatory = $false)]
        $Events,
        [parameter(Mandatory = $false)]
        $Branches
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodePipeline.Pipeline.GitPullRequestFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
