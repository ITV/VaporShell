function Add-VSSageMakerProcessingJobProcessingOutputsObject {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ProcessingJob.ProcessingOutputsObject resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ProcessingJob.ProcessingOutputsObject resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html

    .PARAMETER S3Output
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-s3output
        UpdateType: Immutable
        Type: S3Output

    .PARAMETER AppManaged
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-appmanaged
        UpdateType: Immutable
        PrimitiveType: Boolean

    .PARAMETER FeatureStoreOutput
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-featurestoreoutput
        UpdateType: Immutable
        Type: FeatureStoreOutput

    .PARAMETER OutputName
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-processingjob-processingoutputsobject.html#cfn-sagemaker-processingjob-processingoutputsobject-outputname
        UpdateType: Immutable
        PrimitiveType: String

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ProcessingJob.ProcessingOutputsObject')]
    [CmdletBinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $S3Output,

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

        [Parameter(Mandatory = $false)]
        $FeatureStoreOutput,

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
        $OutputName

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ProcessingJob.ProcessingOutputsObject'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
