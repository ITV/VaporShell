function Add-VSImageBuilderLifecyclePolicyExclusionRules {
    <#
    .SYNOPSIS
        Adds an AWS::ImageBuilder::LifecyclePolicy.ExclusionRules resource property to the template.

    .DESCRIPTION
        Adds an AWS::ImageBuilder::LifecyclePolicy.ExclusionRules resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-exclusionrules.html

    .PARAMETER Amis
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-exclusionrules.html#cfn-imagebuilder-lifecyclepolicy-exclusionrules-amis
        UpdateType: Mutable
        Type: AmiExclusionRules

    .PARAMETER TagMap
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-lifecyclepolicy-exclusionrules.html#cfn-imagebuilder-lifecyclepolicy-exclusionrules-tagmap
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ImageBuilder.LifecyclePolicy.ExclusionRules')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $Amis,

        [Parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $TagMap

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ImageBuilder.LifecyclePolicy.ExclusionRules'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
