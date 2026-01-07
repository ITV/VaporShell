function Add-VSSageMakerProcessingJobDatasetDefinition {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ProcessingJob.DatasetDefinition resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ProcessingJob.DatasetDefinition resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html

    .PARAMETER InputMode
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-inputmode
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER RedshiftDatasetDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-redshiftdatasetdefinition
        UpdateType: Immutable
        Type: RedshiftDatasetDefinition

    .PARAMETER AthenaDatasetDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-athenadatasetdefinition
        UpdateType: Immutable
        Type: AthenaDatasetDefinition

    .PARAMETER LocalPath
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-localpath
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER DataDistributionType
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-datasetdefinition.html#cfn-sagemaker-processingjob-datasetdefinition-datadistributiontype
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ProcessingJob.DatasetDefinition')]
    [CmdletBinding()]

    Param
    (
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
        $InputMode,

        [Parameter(Mandatory = $false)]
        $RedshiftDatasetDefinition,

        [Parameter(Mandatory = $false)]
        $AthenaDatasetDefinition,

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
        $LocalPath,

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
        $DataDistributionType

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ProcessingJob.DatasetDefinition'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
