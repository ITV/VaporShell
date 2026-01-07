function Add-VSCodeBuildProjectPullRequestBuildPolicy {
    <#
    .SYNOPSIS
        Adds an AWS::CodeBuild::Project.PullRequestBuildPolicy resource property to the template.

    .DESCRIPTION
        Adds an AWS::CodeBuild::Project.PullRequestBuildPolicy resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-pullrequestbuildpolicy.html

    .PARAMETER RequiresCommentApproval
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-pullrequestbuildpolicy.html#cfn-codebuild-project-pullrequestbuildpolicy-requirescommentapproval
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ApproverRoles
        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-pullrequestbuildpolicy.html#cfn-codebuild-project-pullrequestbuildpolicy-approverroles
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CodeBuild.Project.PullRequestBuildPolicy')]
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
        $RequiresCommentApproval,

        [Parameter(Mandatory = $false)]
        $ApproverRoles

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CodeBuild.Project.PullRequestBuildPolicy'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
