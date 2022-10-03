function Add-VSDevOpsGuruResourceCollectionCloudFormationCollectionFilter {
    <#
    .SYNOPSIS
        Adds an AWS::DevOpsGuru::ResourceCollection.CloudFormationCollectionFilter resource property to the template. Information about AWS CloudFormation stacks. You can use up to 500 stacks to specify which AWS resources in your account to analyze. For more information, see Stacks: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html in the * AWS CloudFormation User Guide*.

    .DESCRIPTION
        Adds an AWS::DevOpsGuru::ResourceCollection.CloudFormationCollectionFilter resource property to the template.
Information about AWS CloudFormation stacks. You can use up to 500 stacks to specify which AWS resources in your account to analyze. For more information, see Stacks: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html in the * AWS CloudFormation User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-cloudformationcollectionfilter.html

    .PARAMETER StackNames
        An array of CloudFormation stack names.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-devopsguru-resourcecollection-cloudformationcollectionfilter.html#cfn-devopsguru-resourcecollection-cloudformationcollectionfilter-stacknames
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.DevOpsGuru.ResourceCollection.CloudFormationCollectionFilter')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $StackNames
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.DevOpsGuru.ResourceCollection.CloudFormationCollectionFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
