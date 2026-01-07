function Add-VSECRRepositoryCreationTemplateImageTagMutabilityExclusionFilter {
    <#
    .SYNOPSIS
        Adds an AWS::ECR::RepositoryCreationTemplate.ImageTagMutabilityExclusionFilter resource property to the template.

    .DESCRIPTION
        Adds an AWS::ECR::RepositoryCreationTemplate.ImageTagMutabilityExclusionFilter resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repositorycreationtemplate-imagetagmutabilityexclusionfilter.html

    .PARAMETER ImageTagMutabilityExclusionFilterType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repositorycreationtemplate-imagetagmutabilityexclusionfilter.html#cfn-ecr-repositorycreationtemplate-imagetagmutabilityexclusionfilter-imagetagmutabilityexclusionfiltertype
        UpdateType: Mutable
        PrimitiveType: String

    .PARAMETER ImageTagMutabilityExclusionFilterValue
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-repositorycreationtemplate-imagetagmutabilityexclusionfilter.html#cfn-ecr-repositorycreationtemplate-imagetagmutabilityexclusionfilter-imagetagmutabilityexclusionfiltervalue
        UpdateType: Mutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.ECR.RepositoryCreationTemplate.ImageTagMutabilityExclusionFilter')]
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
        $ImageTagMutabilityExclusionFilterType,

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
        $ImageTagMutabilityExclusionFilterValue

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.ECR.RepositoryCreationTemplate.ImageTagMutabilityExclusionFilter'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
