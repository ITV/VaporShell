function Add-VSSageMakerProcessingJobProcessingInputsObject {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ProcessingJob.ProcessingInputsObject resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ProcessingJob.ProcessingInputsObject resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html

    .PARAMETER AppManaged
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-appmanaged
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER InputName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-inputname
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER DatasetDefinition
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-datasetdefinition
        UpdateType: Immutable
        Type: DatasetDefinition

    .PARAMETER S3Input
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processinginputsobject.html#cfn-sagemaker-processingjob-processinginputsobject-s3input
        UpdateType: Immutable
        Type: S3Input

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ProcessingJob.ProcessingInputsObject')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Boolean","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $AppManaged,

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
        $InputName,

        [Parameter(Mandatory = $false)]
        $DatasetDefinition,

        [Parameter(Mandatory = $false)]
        $S3Input

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ProcessingJob.ProcessingInputsObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
