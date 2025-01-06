function Add-VSCloudFormationLambdaHookStackNames {
    <#
    .SYNOPSIS
        Adds an AWS::CloudFormation::LambdaHook.StackNames resource property to the template.

    .DESCRIPTION
        Adds an AWS::CloudFormation::LambdaHook.StackNames resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stacknames.html

    .PARAMETER Exclude
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stacknames.html#cfn-cloudformation-lambdahook-stacknames-exclude
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .PARAMETER Include
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stacknames.html#cfn-cloudformation-lambdahook-stacknames-include
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: False

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.CloudFormation.LambdaHook.StackNames')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Exclude,

        [Parameter(Mandatory = $false)]
        $Include

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.CloudFormation.LambdaHook.StackNames'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
