function Add-VSBatchComputeEnvironmentLaunchTemplateSpecificationOverride {
    <#
    .SYNOPSIS
        Adds an AWS::Batch::ComputeEnvironment.LaunchTemplateSpecificationOverride resource property to the template.

    .DESCRIPTION
        Adds an AWS::Batch::ComputeEnvironment.LaunchTemplateSpecificationOverride resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html

    .PARAMETER TargetInstanceTypes
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-targetinstancetypes
        UpdateType: Conditional
        Type: List
        PrimitiveItemType: String
        DuplicatesAllowed: True

    .PARAMETER LaunchTemplateName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-launchtemplatename
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER Version
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-version
        UpdateType: Conditional
        PrimitiveType: String

    .PARAMETER LaunchTemplateId
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-computeenvironment-launchtemplatespecificationoverride.html#cfn-batch-computeenvironment-launchtemplatespecificationoverride-launchtemplateid
        UpdateType: Conditional
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.Batch.ComputeEnvironment.LaunchTemplateSpecificationOverride')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $TargetInstanceTypes,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LaunchTemplateName,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Version,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $LaunchTemplateId

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Batch.ComputeEnvironment.LaunchTemplateSpecificationOverride'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
