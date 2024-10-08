function Add-VSSageMakerModelCardContent {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelCard.Content resource property to the template.

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelCard.Content resource property to the template.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html

    .PARAMETER IntendedUses
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-intendeduses
        UpdateType: Mutable
        Type: IntendedUses

    .PARAMETER AdditionalInformation
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-additionalinformation
        UpdateType: Mutable
        Type: AdditionalInformation

    .PARAMETER ModelOverview
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-modeloverview
        UpdateType: Mutable
        Type: ModelOverview

    .PARAMETER TrainingDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-trainingdetails
        UpdateType: Mutable
        Type: TrainingDetails

    .PARAMETER EvaluationDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-evaluationdetails
        UpdateType: Mutable
        Type: List
        ItemType: EvaluationDetail
        DuplicatesAllowed: True

    .PARAMETER ModelPackageDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-modelpackagedetails
        UpdateType: Mutable
        Type: ModelPackageDetails

    .PARAMETER BusinessDetails
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-content.html#cfn-sagemaker-modelcard-content-businessdetails
        UpdateType: Mutable
        Type: BusinessDetails

    .FUNCTIONALITY
        Vaporshell
    #>

    [OutputType('Vaporshell.Resource.SageMaker.ModelCard.Content')]
    [cmdletbinding()]

    Param
    (
        [Parameter(Mandatory = $false)]
        $IntendedUses,

        [Parameter(Mandatory = $false)]
        $AdditionalInformation,

        [Parameter(Mandatory = $false)]
        $ModelOverview,

        [Parameter(Mandatory = $false)]
        $TrainingDetails,

        [Parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "Vaporshell.Resource.SageMaker.ModelCard.EvaluationDetail"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EvaluationDetails,

        [Parameter(Mandatory = $false)]
        $ModelPackageDetails,

        [Parameter(Mandatory = $false)]
        $BusinessDetails

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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelCard.Content'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
