function Add-VSDevOpsGuruResourceCollectionResourceCollectionFilter {
    <#
    .SYNOPSIS
        Adds an AWS::DevOpsGuru::ResourceCollection.ResourceCollectionFilter resource property to the template. Information about a filter used to specify which AWS resources are analyzed for anomalous behavior by DevOps Guru.

    .DESCRIPTION
        Adds an AWS::DevOpsGuru::ResourceCollection.ResourceCollectionFilter resource property to the template.
Information about a filter used to specify which AWS resources are analyzed for anomalous behavior by DevOps Guru.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-resourcecollectionfilter.html

    .PARAMETER CloudFormation
        Information about AWS CloudFormation stacks. You can use up to 500 stacks to specify which AWS resources in your account to analyze. For more information, see Stacks: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html in the * AWS CloudFormation User Guide*.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-resourcecollectionfilter.html#cfn-devopsguru-resourcecollection-resourcecollectionfilter-cloudformation
        UpdateType: Mutable
        Type: CloudFormationCollectionFilter

    .PARAMETER Tags
        *Update requires*: No interruption: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-update-behaviors.html#update-no-interrupt

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-resourcecollectionfilter.html#cfn-devopsguru-resourcecollection-resourcecollectionfilter-tags
        UpdateType: Mutable
        Type: List
        ItemType: TagCollection

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DevOpsGuru.ResourceCollection.ResourceCollectionFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $CloudFormation,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.DevOpsGuru.ResourceCollection.TagCollection"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Tags
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DevOpsGuru.ResourceCollection.ResourceCollectionFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
