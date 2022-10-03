function Add-VSFISExperimentTemplateExperimentTemplateTarget {
    <#
    .SYNOPSIS
        Adds an AWS::FIS::ExperimentTemplate.ExperimentTemplateTarget resource property to the template. Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN or at least one resource tag. You cannot specify both ARNs and tags.

    .DESCRIPTION
        Adds an AWS::FIS::ExperimentTemplate.ExperimentTemplateTarget resource property to the template.
Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN or at least one resource tag. You cannot specify both ARNs and tags.

For more information, see Targets: https://docs.aws.amazon.com/fis/latest/userguide/targets.html in the *AWS Fault Injection Simulator User Guide*.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html

    .PARAMETER ResourceType
        The resource type. The resource type must be supported for the specified action.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html#cfn-fis-experimenttemplate-experimenttemplatetarget-resourcetype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ResourceArns
        The Amazon Resource Names ARNs of the resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html#cfn-fis-experimenttemplate-experimenttemplatetarget-resourcearns
        UpdateType: Mutable
        Type: List
        PrimitiveItemType: String

    .PARAMETER ResourceTags
        The tags for the target resources.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html#cfn-fis-experimenttemplate-experimenttemplatetarget-resourcetags
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Parameters
        The parameters for the resource type.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html#cfn-fis-experimenttemplate-experimenttemplatetarget-parameters
        UpdateType: Mutable
        Type: Map
        PrimitiveItemType: String

    .PARAMETER Filters
        The filters to apply to identify target resources using specific attributes.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html#cfn-fis-experimenttemplate-experimenttemplatetarget-filters
        UpdateType: Mutable
        Type: List
        ItemType: ExperimentTemplateTargetFilter

    .PARAMETER SelectionMode
        Scopes the identified resources to a specific count of the resources at random, or a percentage of the resources. All identified resources are included in the target.
+ ALL - Run the action on all identified targets. This is the default.
+ COUNTn - Run the action on the specified number of targets, chosen from the identified targets at random. For example, COUNT1 selects one of the targets.
+ PERCENTn - Run the action on the specified percentage of targets, chosen from the identified targets at random. For example, PERCENT25 selects 25% of the targets.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-experimenttemplatetarget.html#cfn-fis-experimenttemplate-experimenttemplatetarget-selectionmode
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.FIS.ExperimentTemplate.ExperimentTemplateTarget')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ResourceType,
        [parameter(Mandatory = $false)]
        $ResourceArns,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $ResourceTags,
        [parameter(Mandatory = $false)]
        [System.Collections.Hashtable]
        $Parameters,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.FIS.ExperimentTemplate.ExperimentTemplateTargetFilter"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Filters,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $SelectionMode
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.FIS.ExperimentTemplate.ExperimentTemplateTarget'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
