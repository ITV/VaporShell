function Add-VSSageMakerModelBiasJobDefinitionEndpointInput {
    <#
    .SYNOPSIS
        Adds an AWS::SageMaker::ModelBiasJobDefinition.EndpointInput resource property to the template. Input object for the endpoint

    .DESCRIPTION
        Adds an AWS::SageMaker::ModelBiasJobDefinition.EndpointInput resource property to the template.
Input object for the endpoint

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html

    .PARAMETER EndpointName
        An endpoint in customer's account which has enabled DataCaptureConfig enabled.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-endpointname
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER LocalPath
        Path to the filesystem where the endpoint data is available to the container.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-localpath
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER S3DataDistributionType
        Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defaults to FullyReplicated

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-s3datadistributiontype
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER S3InputMode
        Whether the Pipe or File is used as the input mode for transferring data for the monitoring job. Pipe mode is recommended for large datasets. File mode is useful for small files that fit in memory. Defaults to File.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-s3inputmode
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER StartTimeOffset
        If specified, monitoring jobs substract this time from the start time. For information about using offsets for scheduling monitoring jobs, see Schedule Model Quality Monitoring Jobs: https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-model-quality-schedule.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-starttimeoffset
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER EndTimeOffset
        If specified, monitoring jobs substract this time from the end time. For information about using offsets for scheduling monitoring jobs, see Schedule Model Quality Monitoring Jobs: https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-model-quality-schedule.html.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-endtimeoffset
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER FeaturesAttribute
        The attributes of the input data that are the input features.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-featuresattribute
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER InferenceAttribute
        The attribute of the input data that represents the ground truth label.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-inferenceattribute
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ProbabilityAttribute
        In a classification problem, the attribute that represents the class probability.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-probabilityattribute
        UpdateType: Immutable
        PrimitiveType: String

    .PARAMETER ProbabilityThresholdAttribute
        The threshold for the class probability to be evaluated as a positive result.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-endpointinput.html#cfn-sagemaker-modelbiasjobdefinition-endpointinput-probabilitythresholdattribute
        UpdateType: Immutable
        PrimitiveType: Double

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.SageMaker.ModelBiasJobDefinition.EndpointInput')]
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
        $EndpointName,
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
        $LocalPath,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $S3DataDistributionType,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $S3InputMode,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $StartTimeOffset,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $EndTimeOffset,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FeaturesAttribute,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $InferenceAttribute,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ProbabilityAttribute,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $ProbabilityThresholdAttribute
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.SageMaker.ModelBiasJobDefinition.EndpointInput'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
